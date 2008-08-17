Gem::Specification.new do |s|
  s.name = %q{net-ssh-gateway}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamis Buck"]
  s.date = %q{2008-04-30}
  s.description = %q{A simple library to assist in establishing tunneled Net::SSH connections}
  s.email = %q{jamis@jamisbuck.org}
  s.files = ["CHANGELOG.rdoc", "lib/net/ssh/gateway.rb", "Manifest", "Rakefile", "README.rdoc", "setup.rb", "test/gateway_test.rb", "net-ssh-gateway.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://net-ssh.rubyforge.org/gateway}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{net-ssh-gateway}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A simple library to assist in establishing tunneled Net::SSH connections}
  s.test_files = ["test/gateway_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<net-ssh>, [">= 1.99.1"])
    else
      s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
    end
  else
    s.add_dependency(%q<net-ssh>, [">= 1.99.1"])
  end
end
