require 'helper'

describe OiApi do

  it 'has a version' do
    OiApi::VERSION.wont_be_nil
  end

  describe 'configuration' do

    describe '.username' do
      it 'defaults nil' do
        OiApi.username.must_be_nil
      end
    end

    describe '.password' do
      it 'defaults nil' do
        OiApi.password.must_be_nil
      end
    end

    describe '.api_endpoint' do
      it 'has a default' do
        OiApi.api_endpoint.must_equal OiApi::Configuration::DEFAULT_API_ENDPOINT
      end
    end

    describe '.user_agent' do
      it 'has a default' do
        OiApi.user_agent.must_equal OiApi::Configuration::DEFAULT_USER_AGENT
      end
    end

    describe '.format' do
      it 'has a default' do
        OiApi.format.must_equal OiApi::Configuration::DEFAULT_FORMAT
      end
    end

    describe '.content_type' do
      it 'has a default' do
        OiApi.content_type.must_equal OiApi::Configuration::DEFAULT_CONTENT_TYPE
      end
    end

  end

end
