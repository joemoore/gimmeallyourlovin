

module Merb::Test::Fixtures::Controllers
  
  class SomeModel
    def to_xml; "<XML:Model />" end
    def to_json(options = {})
      includes = options[:include].join(', ') rescue ""
      excludes = options[:except].first rescue ""
      "{ 'include': '#{includes}', 'exclude': '#{excludes}' }"
    end
  end
  
  class Testing < Merb::Controller
    self._template_root = File.dirname(__FILE__) / "views"
  end
  
  class Display < Testing
    
    def index
      @obj = SomeModel.new
      display @obj
    end
  end

  class DisplayHtmlDefault < Display; end

  class DisplayClassProvides < Display
    provides :xml
  end

  class DisplayLocalProvides < Display
    
    def index
      @obj = SomeModel.new
      provides :xml
      display @obj
    end
  end
  
  class DisplayWithTemplate < Display
    layout :custom
  end
  
  class DisplayWithTemplateArgument < Display
    def index
      @obj = SomeModel.new
      display @obj, :layout => :custom_arg
    end
    
    def index_by_arg
      @obj = SomeModel.new
      display @obj, "merb/test/fixtures/controllers/display_with_template_argument/index.html"
    end
  end
  
  class DisplayWithSerializationOptions < Display
    provides :json
    
    def index
      @obj = SomeModel.new
      display @obj, :include => [:beer, :jazz], :except => [:idiots]
    end
    
    def index_that_passes_empty_hash
      @obj = SomeModel.new
      display @obj, {}
    end
  end
end