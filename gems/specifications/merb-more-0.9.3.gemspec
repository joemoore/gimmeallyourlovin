Gem::Specification.new do |s|
  s.name = %q{merb-more}
  s.version = "0.9.3"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ezra Zygmuntowicz"]
  s.date = %q{2008-05-03}
  s.description = %q{(merb - merb-core) == merb-more.  The Full Stack. Take what you need; leave what you don't.}
  s.email = %q{ez@engineyard.com}
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb-more.rb"]
  s.homepage = %q{http://www.merbivore.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{(merb - merb-core) == merb-more.  The Full Stack. Take what you need; leave what you don't.}

  s.add_dependency(%q<merb-core>, [">= 0.9.3"])
  s.add_dependency(%q<merb-action-args>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-assets>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-gen>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-haml>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-builder>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-mailer>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-parts>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-cache>, [">= 0.9.3", "<= 1.0"])
  s.add_dependency(%q<merb-freezer>, [">= 0.9.3", "<= 1.0"])
end
