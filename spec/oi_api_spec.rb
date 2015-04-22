require 'spec_helper'

RSpec.describe OiApi do

  it 'has a version' do
    expect(OiApi::VERSION).to be_instance_of(String)
  end

  context 'configuration' do

    context '.username' do
      it 'defaults nil' do
        expect(OiApi.username).to be_nil
      end
    end

    context '.password' do
      it 'defaults nil' do
        expect(OiApi.password).to be_nil
      end
    end

    context '.api_endpoint' do
      it 'has a default' do
        expect(OiApi.api_endpoint).to eql(OiApi::Configuration::DEFAULT_API_ENDPOINT)
      end
    end

    context '.user_agent' do
      it 'has a default' do
        expect(OiApi.user_agent).to eql(OiApi::Configuration::DEFAULT_USER_AGENT)
      end
    end

    context '.format' do
      it 'has a default' do
        expect(OiApi.format).to eql(OiApi::Configuration::DEFAULT_FORMAT)
      end
    end

    context '.content_type' do
      it 'has a default' do
        expect(OiApi.content_type).to eql(OiApi::Configuration::DEFAULT_CONTENT_TYPE)
      end
    end

  end

end
