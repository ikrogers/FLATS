{"filter":false,"title":"test_helper.rb","tooltip":"/test/test_helper.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":23,"column":0},"action":"remove","lines":["<<<<<<< HEAD","ENV['RAILS_ENV'] ||= 'test'","=======","ENV[\"RAILS_ENV\"] ||= \"test\"",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","require File.expand_path('../../config/environment', __FILE__)","require 'rails/test_help'","","class ActiveSupport::TestCase","<<<<<<< HEAD","  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.","=======","  ActiveRecord::Migration.check_pending!","","  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.","  #","  # Note: You'll currently still have to declare fixtures explicitly in integration tests","  # -- they do not yet inherit this setting",">>>>>>> 91767dfc4602d3ed27169ceb2a4a3fe5e8b244b3","  fixtures :all","","  # Add more helper methods to be used by all tests here...","end",""]},{"start":{"row":0,"column":0},"end":{"row":14,"column":3},"action":"insert","lines":["ENV[\"RAILS_ENV\"] ||= \"test\"","require File.expand_path('../../config/environment', __FILE__)","require 'rails/test_help'","","class ActiveSupport::TestCase","  ActiveRecord::Migration.check_pending!","","  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.","  #","  # Note: You'll currently still have to declare fixtures explicitly in integration tests","  # -- they do not yet inherit this setting","  fixtures :all","","  # Add more helper methods to be used by all tests here...","end"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":14,"column":3},"end":{"row":14,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1418073750932,"hash":"ea078eb784e4aa5e861ec9ab9aeda32b7e5d8362"}