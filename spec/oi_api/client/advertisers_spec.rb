require 'spec_helper'

RSpec.describe OiApi::Client::Advertisers do

  before do
    Factory.delete_all_advertisers
  end

  let(:api) {
    Factory.api_client
  }

  let(:advertiser) {
    Factory.create_advertiser
  }

  context '#advertisers', :vcr do

    let(:response) {
      Factory.create_advertiser
      Factory.create_advertiser
      api.advertisers
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns HTTParty::Response' do
      expect(response).to be_instance_of Array
    end

    it 'returns all advertisers' do
      expect(response.size).to eql 2
    end

  end

  context '#advertiser', :vcr do

    let(:response) {
      api.advertiser(advertiser['id'])
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns HTTParty::Response' do
      expect(response).to be_instance_of Hash
    end

    it 'returns the advertiser' do
      expect(response.keys).to include *Factory.valid_advertiser_params.keys.map(&:to_s)
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) { api.advertiser(bad_id) }

      it 'returns not found error message' do
        expect(response['message']).to eql 'Record not found'
      end

      it 'returns not found error message' do
        expect(response['status']).to eql 'error'
      end

      it 'returns 404' do
        expect(response.code).to eql 404
      end

    end

  end

  context '#create_advertiser', :vcr do

    let(:response) {
      api.create_advertiser(Factory.valid_advertiser_params)
    }

    it 'creates an advertiser' do
      expect(response).to include(
        'status' => 'Create Successful',
        'message' => 'Advertiser successfully created'
      )
    end

    it 'returns 201 created' do
      expect(response.code).to eql 201
    end

    context 'bad request' do

      let(:invalid_params) {
        _prms = Factory.valid_advertiser_params
        _prms.delete(:name)
        _prms
      }

      let(:response) {
        api.create_advertiser(invalid_params)
      }

      it 'returns 400 bad request with invalid params' do
        expect(response.code).to eql 400
      end

      it 'returns an error message' do
        expect(response).to eql(
          'status' => 'Create Failed',
          'message' => {
            'name' => ['This field is required.']
          }
        )
      end

      it 'returns 400 bad request when name already exists' do
        _prms = Factory.valid_advertiser_params
        api.create_advertiser(_prms)
        expect(api.create_advertiser(_prms).code).to eql 400
      end

    end

  end

  context '#update_advertiser', :vcr do

    let(:response) {
      api.update_advertiser(advertiser['id'], status_id: 2)
    }

    it 'updates an advertiser' do
      expect(response).to eql('status' => 'Update Successful')
    end

    it 'returns 200 OK' do
      expect(response.code).to eql 200
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) {
        api.update_advertiser(bad_id, status_id: 2)
      }

      it 'returns 404' do
        expect(response.code).to eql 404
      end

      it 'returns not found error message' do
        expect(response['message']).to eql 'Record not found'
      end

      it 'returns error status' do
        expect(response['status']).to eql 'error'
      end

    end

  end

  context '#delete_advertiser', :vcr do

    let(:response) {
      api.delete_advertiser(advertiser['id'])
    }

    it 'deletes an advertiser' do
      expect(response).to include(
        'status' => 'Delete Successful',
        'message' => 'Advertiser Succesfully deleted'
      )
    end

    it 'returns 200 OK' do
      expect(response.code).to eql 200
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) {
        api.delete_advertiser(bad_id)
      }

      it 'returns not found error message' do
        expect(response['message']).to eql 'Record not found'
      end

      it 'returns not found error message' do
        expect(response['status']).to eql 'error'
      end

      it 'returns 404' do
        expect(response.code).to eql 404
      end

    end

  end

end
