$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "slim_fast/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "slim_fast"
  s.version     = SlimFast::VERSION
  s.authors     = ["Kevin Elliott"]
  s.email       = ["kevin@welikeinc.com"]
  s.homepage    = "http://github.com/kevinelliott/slim_fast"
  s.summary     = "The lightening speed diet plan that makes your URLs slimmer, faster."
  s.description = "The lightening speed diet plan that makes your URLs slimmer, faster."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
