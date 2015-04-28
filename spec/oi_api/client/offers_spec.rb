require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_get_resources.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'
require 'shared_examples_for_delete_resource.rb'

RSpec.describe OiApi::Client::Offers do

  before do
    Factory.delete_all_advertisers
    Factory.delete_all_offers
  end

  let(:api) { Factory.api_client }

  let(:offer) { Factory.create_offer }

  context '#offers', :vcr do

    before do
      adv = Factory.create_advertiser
      Factory.create_offer(advertiser_id: adv['id'])
      Factory.create_offer(advertiser_id: adv['id'])
    end

    let(:response) { api.offers }

    it_should_behave_like 'GET resources', :offer, { expected_num_resources: 2 }

  end

  context '#offer', :vcr do

    let(:response) { api.offer(offer['id']) }

    let(:not_found_response) { api.offer(99999999999999) }

    it_should_behave_like 'GET resource', :offer

  end

  context '#create_offer', :vcr do

    let(:response) { api.create_offer(Factory.valid_offer_params) }

    let(:bad_response) {
      invalid_params = Factory.valid_offer_params
      invalid_params.delete(:advertiser_id)
      api.create_offer(invalid_params)
    }

    let(:bad_response_status) { 'Create Failed' }
    let(:bad_response_message) { 'Field advertiser_id is required' }

    it_should_behave_like 'POST resource', :offer

  end

  context '#update_offer', :vcr do

    let(:update_params) {{
      headline: 'Last chance to buy our product',
      cpl_price: 2.0
    }}

    let(:response) { api.update_offer(offer['id'], update_params) }

    let(:bad_response) { api.update_offer(offer['id'], { name: offer['name'] }) }
    let(:bad_response_status) { 'Update Failed' }
    let(:bad_response_message) {{ 'name' => ['This field cannot be blank.'] }}

    let(:not_found_response) { api.update_offer(99999999999999, status_id: 2) }

    it_should_behave_like 'PUT resource', :offer

  end

  # DELETE not available for offers?
  #context '#delete_offer' do
  #end

end
