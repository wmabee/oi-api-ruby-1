$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib', 'oi_api')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << File.join(File.dirname(__FILE__), 'support')
$LOAD_PATH << File.join(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'oi_api'
require 'rspec'
require 'vcr'
require 'pry'
require 'support/factory'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.hook_into :webmock
  c.cassette_library_dir = 'spec/cassettes'
  c.configure_rspec_metadata!

  c.filter_sensitive_data('<USERNAME>') do |interaction|
    CGI.escape(Factory.test_oi_username)
  end

  c.filter_sensitive_data('<PASSWORD>') do |interaction|
    CGI.escape(Factory.test_oi_password)
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

def titleized_resource(resource_name)
  resource_name.to_s.split('_').map(&:capitalize).join(' ')
end
