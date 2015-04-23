require 'spec_helper'

RSpec.describe OiApi::Client::Offers do

  before do
    Factory.delete_all_advertisers
    Factory.delete_all_offers
  end

  let(:api) {
    Factory.api_client
  }

  let(:offer_params) {
    Factory.valid_offer_params
  }

  let(:offer) {
    Factory.create_offer(offer_params)
  }

  let(:advertiser) {
    Factory.create_advertiser
  }

  context '#offers', :vcr do

    let(:response) {
      Factory.create_offer(advertiser_id: advertiser['id'])
      Factory.create_offer(advertiser_id: advertiser['id'])
      api.offers
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

    let(:response) {
      api.offer(offer['id'])
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
      api.create_offer(Factory.valid_offer_params)
    }

    it 'creates an offer' do
      expect(response).to include(
        'status' => 'Request Successful',
        'message' => 'Offer successfully created'
      )
    end

    it 'returns 201 created' do
      expect(response.code).to eql 201
    end

    context 'bad request' do

      let(:invalid_offer_params) {
        _prms = Factory.valid_offer_params
        _prms.delete(:advertiser_id)
        _prms
      }

      let(:response) {
        api.create_offer(invalid_offer_params)
      }

      it 'returns 400 bad request with invalid params' do
        expect(response.code).to eql 400
      end

      it 'returns an error message' do
        expect(response).to eql(
          'status'=>'Create Failed',
          'message'=>'Field advertiser_id is required'
        )
      end

    end

  end

  context '#update_offer', :vcr do

    let(:update_params) {{
      headline: 'Last chance to buy our product',
      cpl_price: 2.0
    }}

    let(:response) {
      api.update_offer(offer['id'], update_params)
    }

    it 'updates an offer' do
      response
      expect(api.offer(offer['id'])['headline']).to eql update_params[:headline]
    end

    it 'returns success status' do
      expect(response).to include(
        'status' => 'Request Succesful',
        'message' => 'Offer successfully updated',
      )
    end

    it 'returns 200 OK' do
      expect(response.code).to eql 200
    end

    context 'when offer_id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) {
        api.update_offer(bad_id, status_id: 2)
      }

      it 'returns 404' do
        expect(response.code).to eql 404
      end

      it 'returns not found error message' do
        expect(response['message']).to eql 'Offer not found'
      end

      it 'returns error status' do
        expect(response['status']).to eql 'Update Failed'
      end

    end

  end

  # DELETE not available for offers?
  #context '#delete_offer' do
  #end

end
