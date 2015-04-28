require 'spec_helper'

require 'shared_examples_for_get_resource.rb'

RSpec.describe OiApi::Client::Balances do

  let(:api) { Factory.api_client }
  let(:advertiser) { Factory.create_advertiser }

  context '#balance', :vcr do

    let(:response) { api.balance(advertiser['id']) }

    it_should_behave_like 'GET resources', :balance, { expected_num_resources: 1 }

    it 'returns a balance' do
      expect(response['balance']).to eql 0.0
    end

  end

end
