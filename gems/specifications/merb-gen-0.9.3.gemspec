Gem::Specification.new do |s|
  s.name = %q{merb-gen}
  s.version = "0.9.3"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.autorequire = %q{merb-gen}
  s.date = %q{2008-05-03}
  s.default_executable = %q{merb-gen}
  s.description = %q{Merb More: Merb's Application and Plugin Generators}
  s.email = %q{wycats@gmail.com}
  s.executables = ["merb-gen"]
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb-gen", "lib/merb-gen/base.rb", "lib/merb-gen/helpers.rb", "lib/merb-gen.rb", "bin/merb-gen", "app_generators/merb", "app_generators/merb/merb_generator.rb", "app_generators/merb/templates", "app_generators/merb/templates/app", "app_generators/merb/templates/app/controllers", "app_generators/merb/templates/app/controllers/application.rb", "app_generators/merb/templates/app/controllers/exceptions.rb", "app_generators/merb/templates/app/helpers", "app_generators/merb/templates/app/helpers/global_helpers.rb", "app_generators/merb/templates/app/views", "app_generators/merb/templates/app/views/exceptions", "app_generators/merb/templates/app/views/exceptions/internal_server_error.html.erb", "app_generators/merb/templates/app/views/exceptions/not_acceptable.html.erb", "app_generators/merb/templates/app/views/exceptions/not_found.html.erb", "app_generators/merb/templates/app/views/layout", "app_generators/merb/templates/app/views/layout/application.html.erb", "app_generators/merb/templates/autotest", "app_generators/merb/templates/autotest/discover.rb", "app_generators/merb/templates/autotest/merb.rb", "app_generators/merb/templates/autotest/merb_rspec.rb", "app_generators/merb/templates/config", "app_generators/merb/templates/config/environments", "app_generators/merb/templates/config/environments/development.rb", "app_generators/merb/templates/config/environments/production.rb", "app_generators/merb/templates/config/environments/rake.rb", "app_generators/merb/templates/config/environments/test.rb", "app_generators/merb/templates/config/init.rb", "app_generators/merb/templates/config/rack.rb", "app_generators/merb/templates/config/router.rb", "app_generators/merb/templates/public", "app_generators/merb/templates/public/images", "app_generators/merb/templates/public/images/merb.jpg", "app_generators/merb/templates/public/merb.fcgi", "app_generators/merb/templates/public/stylesheets", "app_generators/merb/templates/public/stylesheets/master.css", "app_generators/merb/templates/Rakefile", "app_generators/merb/templates/spec", "app_generators/merb/templates/spec/spec.opts", "app_generators/merb/templates/spec/spec_helper.rb", "app_generators/merb/templates/test", "app_generators/merb/templates/test/test_helper.rb", "app_generators/merb/USAGE", "app_generators/merb_flat", "app_generators/merb_flat/merb_flat_generator.rb", "app_generators/merb_flat/templates", "app_generators/merb_flat/templates/application.rb", "app_generators/merb_flat/templates/config", "app_generators/merb_flat/templates/config/framework.rb", "app_generators/merb_flat/templates/config/init.rb", "app_generators/merb_flat/templates/README.txt", "app_generators/merb_flat/templates/views", "app_generators/merb_flat/templates/views/foo.html.erb", "app_generators/merb_plugin", "app_generators/merb_plugin/merb_plugin_generator.rb", "app_generators/merb_plugin/templates", "app_generators/merb_plugin/templates/lib", "app_generators/merb_plugin/templates/lib/%base_name%", "app_generators/merb_plugin/templates/lib/%base_name%/merbtasks.rb", "app_generators/merb_plugin/templates/lib/%base_name%.rb", "app_generators/merb_plugin/templates/LICENSE", "app_generators/merb_plugin/templates/Rakefile", "app_generators/merb_plugin/templates/README", "app_generators/merb_plugin/templates/spec", "app_generators/merb_plugin/templates/spec/%base_name%_spec.rb", "app_generators/merb_plugin/templates/spec/spec_helper.rb", "app_generators/merb_plugin/templates/test", "app_generators/merb_plugin/templates/test/%base_name%_test.rb", "app_generators/merb_plugin/templates/test/test_helper.rb", "app_generators/merb_plugin/templates/TODO", "app_generators/merb_very_flat", "app_generators/merb_very_flat/merb_very_flat_generator.rb", "app_generators/merb_very_flat/templates", "app_generators/merb_very_flat/templates/%app_file_name%.rb", "app_generators/merb_very_flat/templates/README.txt", "merb_default_generators/model", "merb_default_generators/model/model_generator.rb", "merb_default_generators/model/templates", "merb_default_generators/model/templates/app", "merb_default_generators/model/templates/app/models", "merb_default_generators/model/templates/app/models/%model_file_name%.rb", "merb_default_generators/model/USAGE", "merb_default_generators/resource_controller", "merb_default_generators/resource_controller/resource_controller_generator.rb", "merb_default_generators/resource_controller/templates", "merb_default_generators/resource_controller/templates/app", "merb_default_generators/resource_controller/templates/app/controllers", "merb_default_generators/resource_controller/templates/app/controllers/%controller_file_name%.rb", "merb_default_generators/resource_controller/templates/app/helpers", "merb_default_generators/resource_controller/templates/app/helpers/%controller_file_name%_helper.rb", "merb_default_generators/resource_controller/templates/app/views", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%/delete.html.erb", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%/edit.html.erb", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%/index.html.erb", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%/new.html.erb", "merb_default_generators/resource_controller/templates/app/views/%controller_file_name%/show.html.erb", "merb_default_generators/resource_controller/USAGE", "merb_generators/controller", "merb_generators/controller/controller_generator.rb", "merb_generators/controller/templates", "merb_generators/controller/templates/app", "merb_generators/controller/templates/app/controllers", "merb_generators/controller/templates/app/controllers/%controller_file_name%.rb", "merb_generators/controller/templates/app/helpers", "merb_generators/controller/templates/app/helpers/%controller_file_name%_helper.rb", "merb_generators/controller/templates/app/views", "merb_generators/controller/templates/app/views/%controller_file_name%", "merb_generators/controller/templates/app/views/%controller_file_name%/index.html.erb", "merb_generators/controller/USAGE", "merb_generators/part_controller", "merb_generators/part_controller/part_controller_generator.rb", "merb_generators/part_controller/templates", "merb_generators/part_controller/templates/app", "merb_generators/part_controller/templates/app/helpers", "merb_generators/part_controller/templates/app/helpers/%controller_file_name%_part_helper.rb", "merb_generators/part_controller/templates/app/parts", "merb_generators/part_controller/templates/app/parts/%controller_file_name%_part.rb", "merb_generators/part_controller/templates/app/parts/views", "merb_generators/part_controller/templates/app/parts/views/%controller_file_name%_part", "merb_generators/part_controller/templates/app/parts/views/%controller_file_name%_part/index.html.erb", "merb_generators/part_controller/USAGE", "merb_generators/resource", "merb_generators/resource/resource_generator.rb", "merb_generators/resource/USAGE", "rspec_generators/merb_controller_test", "rspec_generators/merb_controller_test/merb_controller_test_generator.rb", "rspec_generators/merb_controller_test/templates", "rspec_generators/merb_controller_test/templates/spec", "rspec_generators/merb_controller_test/templates/spec/controllers", "rspec_generators/merb_controller_test/templates/spec/controllers/%controller_full_file_path%_spec.rb", "rspec_generators/merb_controller_test/templates/spec/helpers", "rspec_generators/merb_controller_test/templates/spec/helpers/%controller_full_file_path%_helper_spec.rb", "rspec_generators/merb_model_test", "rspec_generators/merb_model_test/merb_model_test_generator.rb", "rspec_generators/merb_model_test/templates", "rspec_generators/merb_model_test/templates/spec", "rspec_generators/merb_model_test/templates/spec/models", "rspec_generators/merb_model_test/templates/spec/models/%model_file_name%_spec.rb", "rspec_generators/merb_resource_controller_test", "rspec_generators/merb_resource_controller_test/merb_resource_controller_test_generator.rb", "rspec_generators/merb_resource_controller_test/templates", "rspec_generators/merb_resource_controller_test/templates/spec", "rspec_generators/merb_resource_controller_test/templates/spec/controllers", "rspec_generators/merb_resource_controller_test/templates/spec/controllers/%controller_full_file_path%_spec.rb", "rspec_generators/merb_resource_controller_test/templates/spec/helpers", "rspec_generators/merb_resource_controller_test/templates/spec/helpers/%controller_full_file_path%_helpers.rb", "rspec_generators/merb_resource_controller_test/templates/spec/views", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%/delete.html.erb_spec.rb", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%/edit.html.erb_spec.rb", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%/index.html.erb_spec.rb", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%/new.html.erb_spec.rb", "rspec_generators/merb_resource_controller_test/templates/spec/views/%controller_full_file_path%/show.html.erb_spec.rb", "test_unit_generators/merb_controller_test", "test_unit_generators/merb_controller_test/merb_controller_test_generator.rb", "test_unit_generators/merb_controller_test/templates", "test_unit_generators/merb_controller_test/templates/test", "test_unit_generators/merb_controller_test/templates/test/functional", "test_unit_generators/merb_controller_test/templates/test/functional/%controller_full_file_path%_test.rb", "test_unit_generators/merb_model_test", "test_unit_generators/merb_model_test/merb_model_test_generator.rb", "test_unit_generators/merb_model_test/templates", "test_unit_generators/merb_model_test/templates/test", "test_unit_generators/merb_model_test/templates/test/unit", "test_unit_generators/merb_model_test/templates/test/unit/%model_file_name%_test.rb", "test_unit_generators/merb_resource_controller_test", "test_unit_generators/merb_resource_controller_test/merb_resource_controller_test_generator.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.merbivore.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.1.1}
  s.summary = %q{Merb More: Merb's Application and Plugin Generators}

  s.add_dependency(%q<merb-core>, [">= 0.9.3"])
  s.add_dependency(%q<rubigen>, [">= 1.2.4"])
end
