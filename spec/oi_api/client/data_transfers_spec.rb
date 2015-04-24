require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_get_resources.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'
require 'shared_examples_for_delete_resource.rb'

RSpec.describe OiApi::Client::DataTransfers do

  before do
    Factory.delete_all_advertisers
    Factory.delete_all_offers
  end

  let(:api) { Factory.api_client }

  let(:offer) { Factory.create_offer }

  let(:data_transfer) { Factory.create_data_transfer(offer_id: offer['id']) }

  context '#data_transfers', :vcr do

    before do
      Factory.create_data_transfer
      Factory.create_data_transfer
    end

    let(:response) { api.data_transfers }

    it_should_behave_like 'GET resources', :data_transfer

  end

  context '#data_transfer', :vcr do

    let(:response) { api.data_transfer(data_transfer['id']) }

    let(:not_found_response) { api.data_transfer(99999999999999) }

    it_should_behave_like 'GET resource', :data_transfer

  end

  context '#create_data_transfer', :vcr do

    let(:response) {
      api.create_data_transfer(offer['id'], Factory.valid_data_transfer_params)
    }

    let(:bad_response) {
      invalid_params = Factory.valid_data_transfer_params
      invalid_params.delete(:name)
      api.create_data_transfer(offer['id'], invalid_params)
    }

    let(:bad_response_message) {{ 'name' => ['This field is required.'] }}
    let(:bad_response_status) { 'Create Failed' }

    it_should_behave_like 'POST resource', :data_transfer

  end

  context '#update_data_transfer', :vcr do

    let(:response) {
      api.update_data_transfer(offer['id'], data_transfer['id'], { status_id: 2 })
    }

    let(:bad_response) {
      api.update_data_transfer(offer['id'], data_transfer['id'], { status_id: 10 })
    }
    let(:bad_response_message) {{ 'status_id' => ['Invalid Status Id'] }}
    let(:bad_response_status) { 'Update Failed' }


    let(:not_found_response) {
      api.update_data_transfer(offer['id'], 99999999999999, status_id: 2)
    }

    it_should_behave_like 'PUT resource', :data_transfer

  end

  context '#delete_data_transfer', :vcr do

    let(:response) { api.delete_data_transfer(data_transfer['id']) }

    let(:not_found_response) { api.delete_data_transfer(99999999999999) }

    it_should_behave_like 'DELETE resource', :data_transfer

  end

end
