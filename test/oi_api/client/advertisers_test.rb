require 'helper'

describe OiApi::Client::Advertisers, vcr: { record: :new_episodes } do

  describe '#advertisers' do

    let(:response) {
      api_client.advertisers
    }

    it 'returns correct http code' do
      response.code.must_equal 200
    end

    it 'returns HTTParty::Response' do
      response.must_be_instance_of HTTParty::Response
    end

    it 'returns all advertisers' do
      response.size.must_equal 10
    end

  end

  describe '#advertiser' do

    let(:advertiser_id) {
      api_client.advertisers.first['id']
    }

    let(:response) {
      api_client.advertiser(advertiser_id)
    }

    it 'returns correct http code' do
      response.code.must_equal 200
    end

    it 'returns HTTParty::Response' do
      response.must_be_instance_of HTTParty::Response
    end

    it 'returns the advertiser' do
      response
      binding.pry
    end

  end

  describe '#create_advertiser' do

    it 'creates an advertiser' do
      api_client.create_advertiser()
    end

  end

  describe '#update_advertiser' do

    it 'updates an advertiser' do
      api_client.update_advertiser(39154)
    end

  end

end
