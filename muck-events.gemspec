# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{muck-events}
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Ball", "Joel Duffin"]
  s.date = %q{2010-10-14}
  s.description = %q{Add events to your application}
  s.email = %q{justin@tatemae.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/controllers/muck/event_users_controller.rb",
     "app/controllers/muck/events_controller.rb",
     "app/models/event_user.rb",
     "app/views/events/_attending.html.erb",
     "app/views/events/_event.html.erb",
     "app/views/events/_not_attending.html.erb",
     "config/locales/en.yml",
     "config/routes.rb",
     "lib/muck-events.rb",
     "lib/muck-events/engine.rb",
     "lib/muck-events/models/event.rb",
     "lib/muck-events/tasks/muck-events.rake",
     "muck-events.gemspec",
     "test/.bundle/config",
     "test/.gitignore",
     "test/.rake_tasks",
     "test/Gemfile",
     "test/Gemfile.lock",
     "test/Rakefile",
     "test/app/controllers/application_controller.rb",
     "test/app/controllers/default_controller.rb",
     "test/app/helpers/application_helper.rb",
     "test/app/language.rb",
     "test/app/models/.keep",
     "test/app/models/country.rb",
     "test/app/models/event.rb",
     "test/app/models/state.rb",
     "test/app/models/user.rb",
     "test/app/models/user_session.rb",
     "test/app/views/default/index.html.erb",
     "test/app/views/layouts/default.html.erb",
     "test/config.ru",
     "test/config/application.rb",
     "test/config/boot.rb",
     "test/config/database.yml",
     "test/config/environment.rb",
     "test/config/environments/development.rb",
     "test/config/environments/production.rb",
     "test/config/environments/test.rb",
     "test/config/initializers/backtrace_silencers.rb",
     "test/config/initializers/inflections.rb",
     "test/config/initializers/mime_types.rb",
     "test/config/initializers/muck.rb",
     "test/config/initializers/secret_token.rb",
     "test/config/initializers/session_store.rb",
     "test/config/routes.rb",
     "test/db/.keep",
     "test/db/migrate/20090320174818_create_muck_permissions_and_roles.rb",
     "test/db/migrate/20090512013727_create_profiles.rb",
     "test/db/migrate/20090602041838_create_users.rb",
     "test/db/migrate/20091112182339_create_events.rb",
     "test/features/step_definitions/common_steps.rb",
     "test/features/step_definitions/web_steps.rb",
     "test/features/step_definitions/webrat_steps.rb",
     "test/features/support/custom_env.rb",
     "test/features/support/env.rb",
     "test/features/support/paths.rb",
     "test/lib/tasks/cucumber.rake",
     "test/public/.htaccess",
     "test/public/404.html",
     "test/public/422.html",
     "test/public/500.html",
     "test/public/dispatch.rb",
     "test/public/favicon.ico",
     "test/public/images/arrow_left.gif",
     "test/public/images/arrow_right.gif",
     "test/public/images/blue/preview.gif",
     "test/public/images/icons/accept.png",
     "test/public/images/icons/add.png",
     "test/public/images/icons/delete.png",
     "test/public/images/icons/vote.png",
     "test/public/images/loading.gif",
     "test/public/images/profile_default.jpg",
     "test/public/images/rails.png",
     "test/public/images/red/preview.gif",
     "test/public/images/spinner.gif",
     "test/public/images/sprites.png",
     "test/public/javascripts/application.js",
     "test/public/javascripts/builder.js",
     "test/public/javascripts/controls.js",
     "test/public/javascripts/dragdrop.js",
     "test/public/javascripts/effects.js",
     "test/public/javascripts/fancyzoom.min.js",
     "test/public/javascripts/jquery/jquery-ui.js",
     "test/public/javascripts/jquery/jquery.form.js",
     "test/public/javascripts/jquery/jquery.jgrowl.js",
     "test/public/javascripts/jquery/jquery.js",
     "test/public/javascripts/jquery/jquery.tips.js",
     "test/public/javascripts/muck.js",
     "test/public/javascripts/muck_activities.js",
     "test/public/javascripts/prototype.js",
     "test/public/javascripts/scriptaculous.js",
     "test/public/javascripts/slider.js",
     "test/public/javascripts/sound.js",
     "test/public/robots.txt",
     "test/public/stylesheets/.keep",
     "test/public/stylesheets/admin.css",
     "test/public/stylesheets/blueprint/ie.css",
     "test/public/stylesheets/blueprint/liquid_screen.css",
     "test/public/stylesheets/blueprint/plugins/buttons/icons/cross.png",
     "test/public/stylesheets/blueprint/plugins/buttons/icons/key.png",
     "test/public/stylesheets/blueprint/plugins/buttons/icons/tick.png",
     "test/public/stylesheets/blueprint/plugins/buttons/readme.txt",
     "test/public/stylesheets/blueprint/plugins/buttons/screen.css",
     "test/public/stylesheets/blueprint/plugins/fancy-type/readme.txt",
     "test/public/stylesheets/blueprint/plugins/fancy-type/screen.css",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/doc.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/email.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/external.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/feed.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/im.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/pdf.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/visited.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/icons/xls.png",
     "test/public/stylesheets/blueprint/plugins/link-icons/readme.txt",
     "test/public/stylesheets/blueprint/plugins/link-icons/screen.css",
     "test/public/stylesheets/blueprint/plugins/liquid/liquid.css",
     "test/public/stylesheets/blueprint/plugins/liquid/src/liquid.css",
     "test/public/stylesheets/blueprint/plugins/rtl/readme.txt",
     "test/public/stylesheets/blueprint/plugins/rtl/screen.css",
     "test/public/stylesheets/blueprint/print.css",
     "test/public/stylesheets/blueprint/screen.css",
     "test/public/stylesheets/blueprint/sprite.css",
     "test/public/stylesheets/blueprint/src/forms.css",
     "test/public/stylesheets/blueprint/src/grid.css",
     "test/public/stylesheets/blueprint/src/grid.png",
     "test/public/stylesheets/blueprint/src/ie.css",
     "test/public/stylesheets/blueprint/src/print.css",
     "test/public/stylesheets/blueprint/src/reset.css",
     "test/public/stylesheets/blueprint/src/typography.css",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_diagonals-small_0_aaaaaa_40x40.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_diagonals-thick_15_444444_40x40.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_100_f0f0f0_1x400.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_50_99c2ff_1x400.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_55_fbf5d0_1x400.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_80_e6e6e6_1x400.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_highlight-hard_100_f9f9f9_1x100.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-bg_highlight-soft_100_e7eef3_1x100.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_222222_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_2694e8_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_2e83ff_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_72a7cf_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_888888_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_cd0a0a_256x240.png",
     "test/public/stylesheets/jquery/cupertino/images/ui-icons_ffffff_256x240.png",
     "test/public/stylesheets/jquery/cupertino/jquery-ui-1.7.1.custom.css",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_flat_55_fbec88_40x100.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_glass_75_d0e5f5_1x400.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_glass_85_dfeffc_1x400.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_gloss-wave_55_5c9ccc_500x100.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_inset-hard_100_f5f8f9_1x100.png",
     "test/public/stylesheets/jquery/redmond/images/ui-bg_inset-hard_100_fcfdfd_1x100.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_217bc0_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_2e83ff_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_469bdd_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_6da8d5_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_cd0a0a_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_d8e7f3_256x240.png",
     "test/public/stylesheets/jquery/redmond/images/ui-icons_f9bd01_256x240.png",
     "test/public/stylesheets/jquery/redmond/jquery-ui-1.7.1.custom.css",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_flat_75_ffffff_40x100.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_65_ffffff_1x400.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_75_dadada_1x400.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-icons_222222_256x240.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-icons_2e83ff_256x240.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-icons_454545_256x240.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-icons_888888_256x240.png",
     "test/public/stylesheets/jquery/smoothness/images/ui-icons_cd0a0a_256x240.png",
     "test/public/stylesheets/jquery/smoothness/jquery-ui-1.7.1.custom.css",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_18_b81900_40x40.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_diagonals-thick_20_666666_40x40.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_flat_10_000000_40x100.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_f6f6f6_1x400.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_100_fdf5ce_1x400.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_glass_65_ffffff_1x400.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_gloss-wave_35_f6a828_500x100.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_100_eeeeee_1x100.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-bg_highlight-soft_75_ffe45c_1x100.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-icons_222222_256x240.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-icons_228ef1_256x240.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ef8c08_256x240.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ffd27a_256x240.png",
     "test/public/stylesheets/jquery/ui-lightness/images/ui-icons_ffffff_256x240.png",
     "test/public/stylesheets/jquery/ui-lightness/jquery-ui-1.7.1.custom.css",
     "test/public/stylesheets/reset.css",
     "test/public/stylesheets/styles.css",
     "test/public/stylesheets/themes/blue/styles.css",
     "test/public/stylesheets/themes/red/styles.css",
     "test/spec/controllers/admin/profiles_controller_test.rb",
     "test/spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/tatemae/muck_events}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Support for events and calendaring in Muck}
  s.test_files = [
    "test/app/controllers/application_controller.rb",
     "test/app/controllers/default_controller.rb",
     "test/app/helpers/application_helper.rb",
     "test/app/language.rb",
     "test/app/models/country.rb",
     "test/app/models/event.rb",
     "test/app/models/state.rb",
     "test/app/models/user.rb",
     "test/app/models/user_session.rb",
     "test/config/application.rb",
     "test/config/boot.rb",
     "test/config/environment.rb",
     "test/config/environments/development.rb",
     "test/config/environments/production.rb",
     "test/config/environments/test.rb",
     "test/config/initializers/backtrace_silencers.rb",
     "test/config/initializers/inflections.rb",
     "test/config/initializers/mime_types.rb",
     "test/config/initializers/muck.rb",
     "test/config/initializers/secret_token.rb",
     "test/config/initializers/session_store.rb",
     "test/config/routes.rb",
     "test/db/migrate/20090320174818_create_muck_permissions_and_roles.rb",
     "test/db/migrate/20090512013727_create_profiles.rb",
     "test/db/migrate/20090602041838_create_users.rb",
     "test/db/migrate/20091112182339_create_events.rb",
     "test/features/step_definitions/common_steps.rb",
     "test/features/step_definitions/web_steps.rb",
     "test/features/step_definitions/webrat_steps.rb",
     "test/features/support/custom_env.rb",
     "test/features/support/env.rb",
     "test/features/support/paths.rb",
     "test/public/dispatch.rb",
     "test/spec/controllers/admin/profiles_controller_test.rb",
     "test/spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

