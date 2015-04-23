require 'httparty'
require 'oi_api/lookup_tables'
require 'oi_api/client/advertisers'
require 'oi_api/client/cards'
require 'oi_api/client/charges'
require 'oi_api/client/subscriptions'
require 'oi_api/client/balances'
require 'oi_api/client/offers'
require 'oi_api/client/data_transfers'
require 'oi_api/client/auto_responders'
require 'oi_api/client/reports'

module OiApi

  class Client

    include HTTParty
    include OiApi::LookupTables
    include OiApi::Client::Advertisers
    include OiApi::Client::Cards
    include OiApi::Client::Charges
    include OiApi::Client::Subscriptions
    include OiApi::Client::Balances
    include OiApi::Client::Offers
    include OiApi::Client::DataTransfers
    include OiApi::Client::AutoResponders
    include OiApi::Client::Reports

    # setup accessors on this client for all config keys
    attr_accessor *Configuration::VALID_CONFIG_KEYS

    def initialize(options = {})
      # Use options passed in, but fall back to config module defaults
      merged_options = OiApi.options.merge(options)

      # Copy the merged values to this client and ignore those
      # not part of our configuration
      OiApi::Configuration::VALID_CONFIG_KEYS.each do |key|
        public_send("#{key}=", merged_options[key])
      end

      # set base_uri and format via HTTParty class methods
      self.class.base_uri(api_endpoint)
      self.class.format(format)
    end

    def get(url, options = {})
      self.class.get url, options_with_basic_auth(options)
    end

    def post(url, options = {})
      self.class.post url, options_with_basic_auth(options)
    end

    def put(url, options = {})
      self.class.put url, options_with_basic_auth(options)
    end

    def delete(url, options = {})
      self.class.delete url, options_with_basic_auth(options)
    end

    private

    def basic_auth_options
      {
        :username => username,
        :password => password
      }
    end

    def default_header_options
      {
        'Content-Type' => content_type,
        'User-Agent' => user_agent
      }
    end

    def options_with_basic_auth(options = {})
      headers = options.has_key?(:headers) ? options.delete(:headers) : {}
      body = options

      _options = {
        basic_auth: basic_auth_options,
        headers: default_header_options.merge(headers),
      }

      _options[:debug_output] = debug_output if debug_output
      _options[:body] = body.to_json unless body.empty?

      _options
    end

  end

end
