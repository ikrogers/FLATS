{"filter":false,"title":"development.rb","tooltip":"/config/environments/development.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":63,"column":0},"action":"remove","lines":["<<<<<<< HEAD","Rails.application.configure do","=======","FLATS::Application.configure do",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","  # Settings specified here will take precedence over those in config/application.rb.","","  # In the development environment your application's code is reloaded on","  # every request. This slows down response time but is perfect for development","  # since you don't have to restart the web server when you make code changes.","  config.cache_classes = false","","  # Do not eager load code on boot.","  config.eager_load = false","<<<<<<< HEAD","=======","  #keep active admin css from conflicting with bootsrap css","  config.assets.precompile += ['active_admin.css']","  ","  config.action_mailer.default_url_options = { :host => 'localhost:3000' }",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","","  # Show full error reports and disable caching.","  config.consider_all_requests_local       = true","  config.action_controller.perform_caching = false","","  # Don't care if the mailer can't send.","  config.action_mailer.raise_delivery_errors = false","","  # Print deprecation notices to the Rails logger.","  config.active_support.deprecation = :log","","<<<<<<< HEAD","  # Raise an error on page load if there are pending migrations.","=======","  # Raise an error on page load if there are pending migrations",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","  config.active_record.migration_error = :page_load","","  # Debug mode disables concatenation and preprocessing of assets.","  # This option may cause significant delays in view rendering with a large","  # number of complex assets.","  config.assets.debug = true","<<<<<<< HEAD","","  # Adds additional error checking when serving assets at runtime.","  # Checks for improperly declared sprockets dependencies.","  # Raises helpful error messages.","  config.assets.raise_runtime_errors = true","","  # Raises error for missing translations","  # config.action_view.raise_on_missing_translations = true","=======","  config.action_mailer.smtp_settings = {","  address:              'smtp.gmail.com',","  port:                 587,","  domain:               'example.com',","  user_name:            'testage123123@gmail.com',","  password:             '78 chickens went on a walk and for got that Google uses CAPTCHA which drives girls up the wall',","  authentication:       'plain',","  enable_starttls_auto: true  }",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","end",""]},{"start":{"row":0,"column":0},"end":{"row":40,"column":3},"action":"insert","lines":["FLATS::Application.configure do","  # Settings specified here will take precedence over those in config/application.rb.","","  # In the development environment your application's code is reloaded on","  # every request. This slows down response time but is perfect for development","  # since you don't have to restart the web server when you make code changes.","  config.cache_classes = false","","  # Do not eager load code on boot.","  config.eager_load = false","  #keep active admin css from conflicting with bootsrap css","  config.assets.precompile += ['active_admin.css']","  ","  config.action_mailer.default_url_options = { :host => 'localhost:3000' }","","  # Show full error reports and disable caching.","  config.consider_all_requests_local       = true","  config.action_controller.perform_caching = false","","  # Don't care if the mailer can't send.","  config.action_mailer.raise_delivery_errors = false","","  # Print deprecation notices to the Rails logger.","  config.active_support.deprecation = :log","","  # Raise an error on page load if there are pending migrations","  config.active_record.migration_error = :page_load","","  # Debug mode disables concatenation and preprocessing of assets.","  # This option may cause significant delays in view rendering with a large","  # number of complex assets.","  config.assets.debug = true","  config.action_mailer.smtp_settings = {","  address:              'smtp.gmail.com',","  port:                 587,","  domain:               'example.com',","  user_name:            'testage123123@gmail.com',","  password:             '78 chickens went on a walk and for got that Google uses CAPTCHA which drives girls up the wall',","  authentication:       'plain',","  enable_starttls_auto: true  }","end"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":40,"column":3},"end":{"row":40,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1418074072179,"hash":"ec87a8d85b31f4ddee6079c8fb9670d148df51e8"}