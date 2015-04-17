require 'helper'

describe OiApi do

  it 'has a version' do
    OiApi::VERSION.wont_be_nil
  end

  it 'has a default configuration' do
    OiApi.configuration.must_be_instance_of(OiApi::Configuration)
  end

end
