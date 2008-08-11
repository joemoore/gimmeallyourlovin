require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')
describe Gimme, "index action" do
  it "should succeed" do 
    dispatch_to(Gimme, :index).should respond_successfully
  end
end