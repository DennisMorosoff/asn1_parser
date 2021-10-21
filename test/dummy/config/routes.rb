Rails.application.routes.draw do
  mount Asn1Parser::Engine => "/asn1_parser"
end
