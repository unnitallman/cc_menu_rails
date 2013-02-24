$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cc_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cc_menu"
  s.version     = CcMenu::VERSION
  s.authors     = ["Unnikrishnan KP"]
  s.email       = ["unni@bangthetable.com"]
  s.homepage    = "http://bangthetable.com"
  s.summary     = "Ruby on Rails extenstion for supporting CCMenu"
  s.description = "Ruby on Rails extenstion for supporting CCMenu"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
