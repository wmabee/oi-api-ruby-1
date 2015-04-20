require 'oi_api/version'
require 'pry'

module OiApi

  module Configuration

    VALID_CONFIG_KEYS = [
      :username,
      :password,
      :api_endpoint,
      :user_agent,
      :format,
      :content_type
    ]

    DEFAULT_API_ENDPOINT = 'https://oiapi.com/v1/'.freeze
    DEFAULT_USER_AGENT   = "OiApiRuby Gem #{OiApi::VERSION}".freeze
    DEFAULT_FORMAT       = :json
    DEFAULT_CONTENT_TYPE = 'application/json'

    attr_accessor *VALID_CONFIG_KEYS

    def configure
      yield self
    end

    def self.extended(base)
      base.reset
    end

    def options
      Hash[ *VALID_CONFIG_KEYS.map { |key| [key, public_send(key)] }.flatten ]
    end

    def reset
      self.username      = nil
      self.password      = nil
      self.api_endpoint  = DEFAULT_API_ENDPOINT
      self.user_agent    = DEFAULT_USER_AGENT
      self.format        = DEFAULT_FORMAT
      self.content_type  = DEFAULT_CONTENT_TYPE
    end

  end

end
