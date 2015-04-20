require 'helper'

describe OiApi::Client::Advertisers do

  let(:api) {
    OiApi.new(
      username: '',
      password: ''
    )
  }

  describe '#advertisers' do

    it 'returns advertisers' do
      api.advertisers
    end

  end

  describe '#advertiser' do

    it 'returns an advertiser' do
      api.advertiser(39154)
    end

  end

  describe '#create_advertiser' do

    it 'creates an advertiser' do
      api.create_advertiser()
    end

  end

  describe '#update_advertiser' do

    it 'updates an advertiser' do
      api.update_advertiser(39154)
    end

  end

end
