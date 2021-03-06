module Merb
  # ControllerExceptions are a way of simplifying controller code by placing
  # exceptional logic back into the MVC pattern.
  #
  # When a ControllerException is raised within your application merb will
  # attempt to re-route the request to your Exceptions controller to render
  # the error in a friendly mannor.
  #
  # For example you might have an action in your app that raises NotFound
  # if a some resource was not available
  #

  #   def show
  #     product = Product.find(params[:id])
  #     raise NotFound if product.nil?
  #     [...]
  #   end
  #
  # This would halt execution of your action and re-route it over to your
  # Exceptions controller which might look something like
  #
  # class Exceptions < Application

  #   def not_found
  #     render :layout => :none
  #   end
  # end
  #
  # As usual the not_found action will look for a template in
  #   app/views/exceptions/not_found.html.erb
  #
  # Note: All standard ControllerExceptions have an HTTP status code associated 
  # with them which is sent to the browser when the action it is rendered.
  #
  # Note: If you do not specifiy how to handle raised ControllerExceptions 
  # or an unhandlable exception occurs within your customised exception action
  # then they will be rendered using the built-in error template
  # in development mode this "built in" template will show stack-traces for
  # any of the ServerError family of exceptions (you can force the stack-trace
  # to display in production mode using the :exception_details config option in 
  # merb.yml)
  #
  #
  # ==== Internal Exceptions 
  #
  # Any other rogue errors (not ControllerExceptions) that occur during the 
  # execution of you app will be converted into the ControllerException 
  # InternalServerError, and like all ControllerExceptions can be caught
  # on your Exceptions controller.
  #
  # InternalServerErrors return status 500, a common use for cusomizing this
  # action might be to send emails to the development team, warning that their
  # application have exploded. Mock example:
  #

  #   def internal_server_error
  #     MySpecialMailer.deliver(
  #       "team@cowboys.com", 
  #       "Exception occured at #{Time.now}", 
  #       params[:exception])
  #     render 'Something is wrong, but the team are on it!'
  #   end
  #
  # Note: The special param[:exception] is available in all Exception actions 
  # and contains the ControllerException that was raised (this is handy if
  # you want to display the associated message or display more detailed info)
  #
  #
  # ==== Extending ControllerExceptions
  #
  # To extend the use of the ControllerExceptions one may extend any of the 
  # HTTPError classes.
  #
  # As an example we can create an exception called AdminAccessRequired.
  #
  #   class AdminAccessRequired < Merb::ControllerExceptions::Unauthorized; end
  #
  # Add the required action to our Exceptions controller
  #
  #   class Exceptions < Application

  #     def admin_access_required
  #       render
  #     end
  #   end
  #
  # In app/views/exceptions/admin_access_required.rhtml
  # 
  #   <h1>You're not an administrator!</h1>
  #   <p>You tried to access <%= @tried_to_access %> but that URL is 
  #   restricted to administrators.</p>
  #
  module ControllerExceptions #:nodoc: all
    
    # Mapping of status code names to their numeric value.
    STATUS_CODES = {}

    class Base < StandardError #:doc:

      # ==== Returns
      # String:: The snake cased name of the error without the namespace.
      def name; self.class.name; end

      # === Returns
      # Integer:: The status-code of the error.
      def status; self.class.status; end
      alias :to_i :status

      class << self

        # ==== Returns
        # String:: The snake cased name of the class without the namespace.
        def name
          self.to_s.split('::').last.snake_case
        end
      
        # Get the actual status-code for an Exception class.
        #
        # As usual, this can come from a constant upwards in
        # the inheritance chain.
        #
        # ==== Returns
        # Fixnum:: The status code of this exception.
        def status
          const_get(:STATUS) rescue 0
        end
        alias :to_i :status
        
        # Set the actual status-code for an Exception class.
        #
        # If possible, set the STATUS constant, and update
        # any previously registered (inherited) status-code.
        #
        # ==== Parameters
        # num<~to_i>:: The status code
        def status=(num)
          unless self.status?
            register_status_code(self, num)
            self.const_set(:STATUS, num.to_i)
          end
        end
      
        # See if a status-code has been defined (on self explicitly).
        #
        # ==== Returns
        # Boolean:: Whether the a status code has been set
        def status?
          self.const_defined?(:STATUS)
        end
      
        # Registers any subclasses with status codes for easy lookup by
        # set_status in Merb::Controller.
        #
        # Inheritance ensures this method gets inherited by any subclasses, so
        # it goes all the way down the chain of inheritance.
        #
        # ==== Parameters
        # 
        # subclass<Merb::ControllerExceptions::Base>::
        #   The Exception class that is inheriting from Merb::ControllerExceptions::Base
        def inherited(subclass)
          # don't set the constant yet - any class methods will be called after self.inherited
          # unless self.status = ... is set explicitly, the status code will be inherited
          register_status_code(subclass, self.status) if self.status?
        end
        
        private
        
        # Register the status-code for an Exception class.
        #
        # ==== Parameters
        # num<~to_i>:: The status code
        def register_status_code(klass, code)
          STATUS_CODES[klass.name.to_sym] = code.to_i
        end
        
      end
    end

    class Informational                 < Merb::ControllerExceptions::Base; end

      class Continue                    < Merb::ControllerExceptions::Informational; self.status = 100; end

      class SwitchingProtocols          < Merb::ControllerExceptions::Informational; self.status = 101; end

    class Successful                    < Merb::ControllerExceptions::Base; end

      class OK                          < Merb::ControllerExceptions::Successful; self.status = 200; end

      class Created                     < Merb::ControllerExceptions::Successful; self.status = 201; end

      class Accepted                    < Merb::ControllerExceptions::Successful; self.status = 202; end

      class NonAuthoritativeInformation < Merb::ControllerExceptions::Successful; self.status = 203; end

      class NoContent                   < Merb::ControllerExceptions::Successful; self.status = 204; end

      class ResetContent                < Merb::ControllerExceptions::Successful; self.status = 205; end

      class PartialContent              < Merb::ControllerExceptions::Successful; self.status = 206; end

    class Redirection                   < Merb::ControllerExceptions::Base; end

      class MultipleChoices             < Merb::ControllerExceptions::Redirection; self.status = 300; end

      class MovedPermanently            < Merb::ControllerExceptions::Redirection; self.status = 301; end

      class MovedTemporarily            < Merb::ControllerExceptions::Redirection; self.status = 302; end

      class SeeOther                    < Merb::ControllerExceptions::Redirection; self.status = 303; end

      class NotModified                 < Merb::ControllerExceptions::Redirection; self.status = 304; end

      class UseProxy                    < Merb::ControllerExceptions::Redirection; self.status = 305; end

      class TemporaryRedirect           < Merb::ControllerExceptions::Redirection; self.status = 307; end

    class ClientError                   < Merb::ControllerExceptions::Base; end

      class BadRequest                  < Merb::ControllerExceptions::ClientError; self.status = 400; end

      class MultiPartParseError         < Merb::ControllerExceptions::BadRequest; end

      class Unauthorized                < Merb::ControllerExceptions::ClientError; self.status = 401; end

      class PaymentRequired             < Merb::ControllerExceptions::ClientError; self.status = 402; end

      class Forbidden                   < Merb::ControllerExceptions::ClientError; self.status = 403; end

      class NotFound                    < Merb::ControllerExceptions::ClientError; self.status = 404; end

      class ActionNotFound              < Merb::ControllerExceptions::NotFound; end

      class TemplateNotFound            < Merb::ControllerExceptions::NotFound; end

      class LayoutNotFound              < Merb::ControllerExceptions::NotFound; end

      class MethodNotAllowed            < Merb::ControllerExceptions::ClientError; self.status = 405; end

      class NotAcceptable               < Merb::ControllerExceptions::ClientError; self.status = 406; end

      class ProxyAuthenticationRequired < Merb::ControllerExceptions::ClientError; self.status = 407; end

      class RequestTimeout              < Merb::ControllerExceptions::ClientError; self.status = 408; end

      class Conflict                    < Merb::ControllerExceptions::ClientError; self.status = 409; end

      class Gone                        < Merb::ControllerExceptions::ClientError; self.status = 410; end

      class LengthRequired              < Merb::ControllerExceptions::ClientError; self.status = 411; end

      class PreconditionFailed          < Merb::ControllerExceptions::ClientError; self.status = 412; end

      class RequestEntityTooLarge       < Merb::ControllerExceptions::ClientError; self.status = 413; end

      class RequestURITooLarge          < Merb::ControllerExceptions::ClientError; self.status = 414; end

      class UnsupportedMediaType        < Merb::ControllerExceptions::ClientError; self.status = 415; end

      class RequestRangeNotSatisfiable  < Merb::ControllerExceptions::ClientError; self.status = 416; end

      class ExpectationFailed           < Merb::ControllerExceptions::ClientError; self.status = 417; end

    class ServerError                   < Merb::ControllerExceptions::Base; end

      class NotImplemented              < Merb::ControllerExceptions::ServerError; self.status = 501; end

      class BadGateway                  < Merb::ControllerExceptions::ServerError; self.status = 502; end

      class ServiceUnavailable          < Merb::ControllerExceptions::ServerError; self.status = 503; end

      class GatewayTimeout              < Merb::ControllerExceptions::ServerError; self.status = 504; end

      class HTTPVersionNotSupported     < Merb::ControllerExceptions::ServerError; self.status = 505; end

      class InternalServerError         < Merb::ControllerExceptions::ServerError #:doc: 
        self.status = 500;
        # DEFAULT_TEMPLATE = ::Merb::Dispatcher::DEFAULT_ERROR_TEMPLATE
        def initialize(exception = nil)
          @exception = exception
          @coderay = CodeRay rescue nil
        end

        def backtrace
          @exception ? @exception.backtrace : backtrace
        end

        def message
          @exception ? @exception.message : message
        end
      end
  end
  
  # Required to show exceptions in the log file
  #
  # e<Exception>:: The exception that a message is being generated for
  def self.exception(e) #:nodoc:
    "#{ e.message } - (#{ e.class })\n" <<  
    "#{(e.backtrace or []).join("\n")}" 
  end

end