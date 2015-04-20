require 'oi_api'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/focus'
require 'minispec-metadata'
require 'vcr'
require 'minitest-vcr'
require 'pry'
require 'cgi'

VCR.configure do |c|
  c.hook_into :webmock
  c.cassette_library_dir = 'test/cassettes'

  c.filter_sensitive_data('<USERNAME>') do |interaction|
    CGI.escape(test_oi_username)
  end

  c.filter_sensitive_data('<PASSWORD>') do |interaction|
    CGI.escape(test_oi_password)
  end
end

MinitestVcr::Spec.configure!

def test_oi_username
  ENV.fetch 'TEST_OI_USERNAME', 'cool_test_user_99'
end

def test_oi_password
  ENV.fetch 'TEST_OI_PASSWORD', 'super_duper_strong_password'
end

def api_client
  OiApi.new(
    username: test_oi_username,
    password: test_oi_password
  )
end
