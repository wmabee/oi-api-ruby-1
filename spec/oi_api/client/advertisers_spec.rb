require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_get_resources.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'
require 'shared_examples_for_delete_resource.rb'

RSpec.describe OiApi::Client::Advertisers do

  before do
    Factory.delete_all_advertisers
  end

  let(:api) {
    Factory.api_client
  }

  let(:advertiser) { Factory.create_advertiser }

  context '#advertisers', :vcr do

    before do
      Factory.create_advertiser
      Factory.create_advertiser
    end

    let(:response) {
      api.advertisers
    }

    it_should_behave_like 'GET resources', :advertiser

  end

  context '#advertiser', :vcr do

    let(:response) { api.advertiser(advertiser['id']) }

    let(:bad_response) { api.advertiser(99999999999999) }

    it_should_behave_like 'GET resource', :advertiser

  end

  context '#create_advertiser', :vcr do

    let(:response) {
      api.create_advertiser(Factory.valid_advertiser_params)
    }

    let(:bad_response) {
      invalid_params = Factory.valid_advertiser_params
      invalid_params.delete(:name)
      api.create_advertiser(invalid_params)
    }

    it_should_behave_like 'POST resource', :advertiser

  end

  context '#update_advertiser', :vcr do

    let(:update_params) {{ status_id: 2 }}

    let(:response) {
      api.update_advertiser(advertiser['id'], update_params)
    }

    let(:bad_response) {
      api.update_advertiser(advertiser['id'], { status_id: 999 })
    }

    let(:not_found_response) {
      api.update_advertiser(99999999999999, update_params)
    }

    it_should_behave_like 'PUT resource', :advertiser

  end

  context '#delete_advertiser', :vcr, :focus do

    let(:response) {
      api.delete_advertiser(advertiser['id'])
    }

    let(:not_found_response) {
      api.delete_advertiser(99999999999999)
    }

    it_should_behave_like 'DELETE resource', :advertiser

  end

end
