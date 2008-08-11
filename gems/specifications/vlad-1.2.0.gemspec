Gem::Specification.new do |s|
  s.name = %q{vlad}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis", "Eric Hodel", "Wilson Bilkovich"]
  s.date = %q{2008-01-14}
  s.description = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy. Much like Capistrano, but with 1/10th the complexity. Vlad integrates seamlessly with Rake, and uses familiar and standard tools like ssh and rsync.  Impale your application on the heartless spike of the Deployer.  == FEATURES/PROBLEMS:  * Full deployment automation stack. * Turnkey deployment for mongrel+apache+svn. * Supports single server deployment with just 3 variables defined. * Built on rake. Easy. Engine is small. * Very few dependencies. All simple. * Uses ssh with your ssh settings already in place. * Uses rsync for efficient transfers. * Run remote commands on one or more servers. * Mix and match local and remote tasks. * Compatible with all of your tab completion shell script rake-tastic goodness. * Ships with tests that actually pass in 0.028 seconds! * Does NOT support Windows right now (we think). Coming soon in 1.2.}
  s.email = %q{ryand-ruby@zenspider.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "considerations.txt", "doco/faq.txt", "doco/getting_started.txt", "doco/migration.txt", "doco/perforce.txt", "doco/variables.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "considerations.txt", "doco/faq.txt", "doco/getting_started.txt", "doco/migration.txt", "doco/perforce.txt", "doco/variables.txt", "lib/rake_remote_task.rb", "lib/vlad.rb", "lib/vlad/apache.rb", "lib/vlad/core.rb", "lib/vlad/git.rb", "lib/vlad/lighttpd.rb", "lib/vlad/mercurial.rb", "lib/vlad/mongrel.rb", "lib/vlad/perforce.rb", "lib/vlad/subversion.rb", "test/test_rake_remote_task.rb", "test/test_vlad.rb", "test/test_vlad_git.rb", "test/test_vlad_mercurial.rb", "test/test_vlad_perforce.rb", "test/test_vlad_subversion.rb", "test/vlad_test_case.rb", "vladdemo.sh"]
  s.has_rdoc = true
  s.homepage = %q{http://rubyhitsquad.com/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hitsquad}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy. Much like Capistrano, but with 1/10th the complexity. Vlad integrates seamlessly with Rake, and uses familiar and standard tools like ssh and rsync.}
  s.test_files = ["test/test_rake_remote_task.rb", "test/test_vlad.rb", "test/test_vlad_git.rb", "test/test_vlad_mercurial.rb", "test/test_vlad_perforce.rb", "test/test_vlad_subversion.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<open4>, [">= 0"])
      s.add_runtime_dependency(%q<hoe>, [">= 1.4.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<open4>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<open4>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.4.0"])
  end
end
