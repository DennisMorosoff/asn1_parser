$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "asn1_parser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "asn1_parser"
  s.version     = Asn1Parser::VERSION
  s.authors     = ["danner2"]
  s.email       = ["dennismorosoff@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Asn1Parser."
  s.description = "TODO: Description of Asn1Parser."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.7", ">= 5.0.7.2"

  s.add_development_dependency "sqlite3"
end
