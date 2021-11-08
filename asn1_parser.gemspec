$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "asn1_parser/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "asn1_parser"
  s.version     = Asn1Parser::VERSION
  s.authors     = ["danner2", "walpurgisnatch"]
  s.email       = ["dennismorosoff@gmail.com", "kawemirs@gmail.com"]
  s.homepage    = "https://github.com/DennisMorosoff/asn1_parser"
  s.summary     = "Parser of Asn1 objects."
  s.description = "Parser of Asn1 objects."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  #  s.add_dependency "rails", "~> 5.0.7", ">= 5.0.7.2"
  s.add_dependency "openssl", "~> 2.2.0"
  s.add_dependency "rchardet", "~> 1.8.0"
  
end
