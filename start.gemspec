$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "start/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "start"
  s.version     = Start::VERSION
  s.authors     = ["Adam Kochanowicz"]
  s.email       = ["adam@neo.com"]
  s.homepage    = "http://adamux.com"
  s.summary     = "A versatile, semantic, and modern CSS framework"
  s.description = "Start.css is a starter CSS framework that can be used either as a CSS file or semantically via Rails/SASS preprocessing."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
