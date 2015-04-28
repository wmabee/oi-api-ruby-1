require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'


RSpec.describe OiApi::Client::Cards do

  let(:api) { Factory.api_client }
  let(:advertiser) { Factory.create_advertiser }
  let(:card) { Factory.create_card(advertiser_id: advertiser['id']) }

  context '#card', :vcr do

    let(:response) { api.card(advertiser['id'], card['id']) }

    let(:not_found_response) { api.card(advertiser['id'], 99999999999999) }

    it_should_behave_like 'GET resource', :card

  end

  context '#create_card', :vcr do

    let(:response) {
      api.create_card(advertiser['id'], Factory.valid_card_params)
    }

    let(:bad_response) {
      invalid_params = Factory.valid_card_params
      invalid_params.delete(:number)
      api.create_card(advertiser['id'], invalid_params)
    }

    let(:bad_response_message) {{ 'number' => ['This field is required.'] }}
    let(:bad_response_status) { 'Create Failed' }

    it_should_behave_like 'POST resource', :card

  end

  context '#update_card', :vcr do

    let(:update_params) {{ address_zip: 11211 }}

    let(:response) { api.update_card(advertiser['id'], card['id'], update_params) }

    let(:bad_response) { api.update_card(advertiser['id'], card['id'], { number: 999 }) }

    let(:bad_response_message) {{ 'number' => ['Invalid Card Number'] }}
    let(:bad_response_status) { 'Update Failed' }

    let(:not_found_response) { api.update_card(advertiser['id'], 99999999999999, update_params) }

    it_should_behave_like 'PUT resource', :card

  end

end
