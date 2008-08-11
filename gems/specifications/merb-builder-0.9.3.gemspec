Gem::Specification.new do |s|
  s.name = %q{merb-builder}
  s.version = "0.9.3"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Younger"]
  s.autorequire = %q{merb-builder}
  s.date = %q{2008-05-03}
  s.description = %q{Merb plugin that provides Builder support}
  s.email = %q{jonathan@daikini.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb-builder", "lib/merb-builder/template.rb", "lib/merb-builder.rb", "spec/builder_spec.rb", "spec/controllers", "spec/controllers/builder.rb", "spec/controllers/views", "spec/controllers/views/builder_config", "spec/controllers/views/builder_config/index.xml.builder", "spec/controllers/views/builder_controller", "spec/controllers/views/builder_controller/index.xml.builder", "spec/controllers/views/capture_builder", "spec/controllers/views/capture_builder/index.xml.builder", "spec/controllers/views/concat_builder", "spec/controllers/views/concat_builder/index.xml.builder", "spec/controllers/views/partial_builder", "spec/controllers/views/partial_builder/_partial_builder.xml.builder", "spec/controllers/views/partial_builder/index.xml.builder", "spec/controllers/views/partial_ivars", "spec/controllers/views/partial_ivars/_partial_builder.xml.builder", "spec/controllers/views/partial_ivars/index.xml.builder", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://merb-plugins.rubyforge.org/merb-builder/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{Merb plugin that provides Builder support}

  s.add_dependency(%q<merb-core>, [">= 0.9.3"])
  s.add_dependency(%q<builder>, [">= 2.0.0"])
end
