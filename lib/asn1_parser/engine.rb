# frozen_string_literal: true

require 'openssl'
require 'rchardet'

module Asn1Parser
  # Class that makes gem to behave as an engine
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec
      g.assets false
      g.helper false
    end
  end
end
