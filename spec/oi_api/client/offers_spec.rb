require 'spec_helper'

RSpec.describe OiApi::Client::Offers do

  before do
    delete_all_advertisers
    delete_all_offers
  end

  context '#offers', :vcr do

    let(:response) {
      advertiser_id = advertiser['id']
      api_client.create_offer(valid_offer_params(advertiser_id: advertiser_id))
      api_client.create_offer(valid_offer_params(advertiser_id: advertiser_id))
      api_client.offers
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns HTTParty::Response' do
      expect(response).to be_instance_of Array
    end

    it 'returns all offers' do
      expect(response.size).to eql 2
    end

  end

  context '#offer', :vcr do

    let(:offer_params) {
      adv = api_client.create_advertiser(valid_advertiser_params)
      valid_offer_params(advertiser_id: adv['id'])
    }

    let(:response) {
      offer = api_client.create_offer(offer_params)
      api_client.offer(offer['id'])
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns HTTParty::Response' do
      expect(response.class).to eql HTTParty::Response
    end

    it 'returns an offer' do
      expect(response.keys).to include(*offer_params.keys.map(&:to_s))
    end

  end

  context '#create_offer', :vcr do

    let(:response) {
      advertiser_id = api_client.create_advertiser(valid_advertiser_params)['id']
      api_client.create_offer(valid_offer_params(advertiser_id: advertiser_id))
    }

    it 'creates an offer' do
      expect(
        api_client.create_offer(valid_offer_params)
      ).to include(
        'status' => 'Request Successful',
        'message' => 'Offer successfully created'
      )
    end

    it 'returns 201 created' do
      expect(api_client.create_offer(valid_offer_params).code).to eql 201
    end

    context 'bad request' do

      let(:invalid_offer_params) {
        _prms = valid_offer_params
        _prms.delete(:advertiser_id)
        _prms
      }

      it 'returns 400 bad request with invalid params' do
        expect(api_client.create_offer(invalid_offer_params).code).to eql 400
      end

      it 'returns an error message' do
        expect(api_client.create_offer(invalid_offer_params)).to eql(
          'status'=>'Create Failed',
          'message'=>'Field advertiser_id is required'
        )
      end

    end

  end

  context '#update_offer', :vcr do

    let(:offer) {
      api_client.create_offer(valid_offer_params)
    }

    let(:update_params) {{
      headline: 'Last chance to buy our product',
      cpl_price: 2.0
    }}

    it 'updates an offer' do
      api_client.update_offer(offer['id'], update_params)
      expect(api_client.offer(offer['id'])['headline']).to eql update_params[:headline]
    end

    it 'returns success status' do
      expect(
        api_client.update_offer(offer['id'], update_params)
      ).to include(
        'status' => 'Request Succesful',
        'message' => 'Offer successfully updated',
      )
    end

    it 'returns 200 OK' do
      expect(api_client.update_offer(offer['id'], update_params).code).to eql 200
    end

    context 'when offer_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns 404' do
        expect(api_client.update_offer(bad_id, status_id: 2).code).to eql 404
      end

      it 'returns not found error message' do
        expect(api_client.update_offer(bad_id, status_id: 2)['message']).to eql 'Offer not found'
      end

      it 'returns error status' do
        expect(api_client.update_offer(bad_id, status_id: 2)['status']).to eql 'Update Failed'
      end

    end

  end

  context '#delete_offer' do

  end

end
