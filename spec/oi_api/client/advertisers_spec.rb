require 'spec_helper'

RSpec.describe OiApi::Client::Advertisers do

  before do
    delete_all_advertisers
  end

  context '#advertisers', :vcr do

    let(:response) {
      api_client.create_advertiser(valid_advertiser_params)
      api_client.create_advertiser(valid_advertiser_params)
      api_client.advertisers
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

    let(:advertiser) {
      api_client.create_advertiser(valid_advertiser_params)
    }

    let(:response) {
      api_client.advertiser(advertiser['id'])
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns HTTParty::Response' do
      expect(response).to be_instance_of Hash
    end

    it 'returns the advertiser' do
      expect(response).to eql advertiser
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns not found error message' do
        expect(api_client.advertiser(bad_id)['message']).to eql 'Record not found'
      end

      it 'returns not found error message' do
        expect(api_client.advertiser(bad_id)['status']).to eql 'error'
      end

      it 'returns 404' do
        expect(api_client.advertiser(bad_id).code).to eql 404
      end

    end

  end

  context '#create_advertiser', :vcr do

    it 'creates an advertiser' do
      expect(
        api_client.create_advertiser(valid_advertiser_params)
      ).to include(
        'status' => 'Create Successful',
        'message' => 'Advertiser successfully created'
      )
    end

    it 'returns 201 created' do
      expect(api_client.create_advertiser(valid_advertiser_params).code).to eql 201
    end

    context 'bad request' do

      let(:invalid_advertiser_params) {
        _prms = valid_advertiser_params
        _prms.delete(:name)
        _prms
      }

      it 'returns 400 bad request when name already exists' do
        _prms = valid_advertiser_params
        api_client.create_advertiser(_prms)
        expect(api_client.create_advertiser(_prms).code).to eql 400
      end

      it 'returns 400 bad request with invalid params' do
        expect(api_client.create_advertiser(invalid_advertiser_params).code).to eql 400
      end

      it 'returns an error message' do
        expect(api_client.create_advertiser(invalid_advertiser_params)).to eql(
          'status' => 'Create Failed',
          'message' => {
            'name' => ['This field is required.']
          }
        )
      end

    end

  end

  context '#update_advertiser', :vcr do

    let(:advertiser) {
      api_client.create_advertiser(valid_advertiser_params)
    }

    it 'updates an advertiser' do
      expect(api_client.update_advertiser(advertiser['id'], status_id: 2)).to eql(
        'status' => 'Update Successful'
      )
    end

    it 'returns 200 OK' do
      expect(api_client.update_advertiser(advertiser['id'], status_id: 2).code).to eql 200
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns 404' do
        expect(api_client.update_advertiser(bad_id, status_id: 2).code).to eql 404
      end

      it 'returns not found error message' do
        expect(api_client.update_advertiser(bad_id, status_id: 2)['message']).to eql 'Record not found'
      end

      it 'returns error status' do
        expect(api_client.update_advertiser(bad_id, status_id: 2)['status']).to eql 'error'
      end

    end

  end

  context '#delete_advertiser', :vcr do

    it 'deletes an advertiser' do
      expect(api_client.delete_advertiser(advertiser['id'])).to include(
        'status' => 'Delete Successful',
        'message' => 'Advertiser Succesfully deleted'
      )
    end

    it 'returns 200 OK' do
      expect(api_client.delete_advertiser(advertiser['id']).code).to eql 200
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns not found error message' do
        expect(api_client.delete_advertiser(bad_id)['message']).to eql 'Record not found'
      end

      it 'returns not found error message' do
        expect(api_client.delete_advertiser(bad_id)['status']).to eql 'error'
      end

      it 'returns 404' do
        expect(api_client.delete_advertiser(bad_id).code).to eql 404
      end

    end

  end

end
