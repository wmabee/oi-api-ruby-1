require 'spec_helper'

require 'shared_examples_for_get_resource.rb'
require 'shared_examples_for_get_resources.rb'
require 'shared_examples_for_post_resource.rb'
require 'shared_examples_for_put_resource.rb'
require 'shared_examples_for_delete_resource.rb'

RSpec.describe OiApi::Client::AutoResponders do

  before do
    Factory.delete_all_advertisers
    Factory.delete_all_offers
    Factory.delete_all_auto_responders
  end

  let(:api) { Factory.api_client }

  let(:offer) { Factory.create_offer }

  context '#all_auto_responders', :vcr do

    before do
      Factory.create_auto_responder
      Factory.create_auto_responder
      Factory.create_auto_responder
    end

    let(:response) { api.all_auto_responders }

    it_should_behave_like 'GET resources', :auto_responder, { expected_num_resources: 3 }

  end

  context '#auto_responders', :vcr do

    before do
      Factory.create_auto_responder(offer_id: offer['id'])
    end

    let(:response) { api.auto_responders(offer['id']) }

    it_should_behave_like 'GET resources', :auto_responder, { expected_num_resources: 1 }

  end

  context '#create_auto_responder', :vcr do
    # TODO
  end

  context '#update_auto_responder', :vcr do
    # TODO
  end

end
