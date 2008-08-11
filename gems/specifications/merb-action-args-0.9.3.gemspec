Gem::Specification.new do |s|
  s.name = %q{merb-action-args}
  s.version = "0.9.3"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.autorequire = %q{merb-action-args}
  s.date = %q{2008-05-03}
  s.description = %q{Merb plugin that provides support for ActionArgs}
  s.email = %q{ykatz@engineyard.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb-action-args", "lib/merb-action-args/abstract_controller.rb", "lib/merb-action-args/get_args.rb", "lib/merb-action-args.rb", "spec/action_args_spec.rb", "spec/controllers", "spec/controllers/action-args.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://merb-plugins.rubyforge.org/merb-haml/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{Merb plugin that provides support for ActionArgs}

  s.add_dependency(%q<merb-core>, [">= 0.9.3"])
  s.add_dependency(%q<ruby2ruby>, [">= 1.1.8"])
end
