$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib', 'oi_api')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__))

require 'oi_api'
require 'rspec'
require 'vcr'
require 'cgi'
require 'securerandom'
require 'pry'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.hook_into :webmock
  c.cassette_library_dir = 'spec/cassettes'
  c.configure_rspec_metadata!

  c.filter_sensitive_data('<USERNAME>') do |interaction|
    CGI.escape(test_oi_username)
  end

  c.filter_sensitive_data('<PASSWORD>') do |interaction|
    CGI.escape(test_oi_password)
  end
end

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.order = :random
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.disable_monkey_patching!
  config.warnings = false

  if config.files_to_run.one?
    # Use the documentation formatter for detailed output,
    # unless a formatter has already been configured
    # (e.g. via a command-line flag).
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10
  Kernel.srand config.seed
end

def test_oi_username
  ENV.fetch 'TEST_OI_USERNAME', 'cool_test_user_99'
end

def test_oi_password
  ENV.fetch 'TEST_OI_PASSWORD', 'super_duper_strong_password'
end

def api_client
  @api_client ||= OiApi.new(
    username: test_oi_username,
    password: test_oi_password
  )
end

def valid_advertiser_params(params = {})
  {
    'name': "new advertiser #{SecureRandom.hex}",
    'status_id': 1,
    'category_id': 1010
  }.merge(params)
end

def advertiser
  api_client.create_advertiser(valid_advertiser_params)
end

def valid_offer_params(params = {})
  advertiser_id = if params.has_key?(:advertiser_id)
    params.delete(:advertiser_id)
  else
    advertiser['id']
  end

  rand_str = SecureRandom.hex

  _prms = {
    advertiser_id: advertiser_id,
    name: "Special Product #{rand_str}",
    category_id: 1010,
    status_id: 9,
    headline: "Buy our product today #{rand_str}",
    body: "Try for FREE for a limited time only. This is your one-and-only chance! #{rand_str}",
    cpl_price: 1.0,
    global_cap: 1000,
    monthly_cap: 300,
    daily_cap: 10,
    image1: 'http://www.opt-intelligence.com/images/cats120.png',
    image2: 'http://www.opt-intelligence.com/images/cats88.png',
    data_points: ['EM', 'FN'],
    targeting: {
      min_age: 18,
      max_age: 45,
      zip: {
        include: true,
        zip_codes: ['14226','10009','10023','11211']
      },
      gender: 'm',
      country: {
        include: true,
        countries: ['USA']
      },
      third_party: { }
    },
    comment:'Hello there'
  }.merge(params)
end

def delete_all_offers
  api_client.offers.each do |offer|
    api_client.delete_offer(offer['id'])
  end
end

def delete_all_advertisers
  api_client.advertisers.each do |advertiser|
    api_client.delete_advertiser(advertiser['id'])
  end
end

