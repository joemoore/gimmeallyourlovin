Gem::Specification.new do |s|
  s.name = %q{merb}
  s.version = "0.9.3"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ezra Zygmuntowicz"]
  s.date = %q{2008-05-03}
  s.description = %q{(merb-core + merb-more) == all of Merb}
  s.email = %q{ez@engineyard.com}
  s.files = ["LICENSE", "README", "Rakefile", "TODO"]
  s.homepage = %q{http://www.merbivore.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{(merb-core + merb-more) == all of Merb}

  s.add_dependency(%q<merb-core>, ["= 0.9.3"])
  s.add_dependency(%q<merb-more>, ["= 0.9.3"])
  s.add_dependency(%q<mongrel>, [">= 1.0.1"])
end
