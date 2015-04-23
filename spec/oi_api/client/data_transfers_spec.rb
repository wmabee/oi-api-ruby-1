require 'spec_helper'

RSpec.describe OiApi::Client::DataTransfers do

  before do
    Factory.delete_all_advertisers
    Factory.delete_all_offers
  end

  let(:api) {
    Factory.api_client
  }

  let(:offer) {
    api.offer(Factory.create_offer['id'])
  }

  let(:data_transfer) {
    Factory.create_data_transfer(offer_id: offer['id'])
  }

  context '#data_transfers', :vcr do

    let(:response) {
      Factory.create_data_transfer
      Factory.create_data_transfer
      api.data_transfers
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns Array' do
      expect(response).to be_instance_of Array
    end

    it 'returns all data transfers' do
      expect(response.size).to eql 2
    end

  end

  context '#data_transfer', :vcr do

    let(:response) {
      api.data_transfer(data_transfer['id'])
    }

    it 'returns correct http code' do
      expect(response.code).to eql 200
    end

    it 'returns Array' do
      expect(response).to be_instance_of Hash
    end

    it 'returns a data transfer' do
      expect(response.keys).to include(*Factory.valid_data_transfer_params.keys.map(&:to_s))
    end
  end

  context '#create_data_transfer', :vcr do

    let(:response) {
      api.create_data_transfer(offer['id'], Factory.valid_data_transfer_params)
    }

    it 'creates a data transfer' do
      expect(response).to include('status' => 'Create Successful')
    end

    it 'returns correct http code' do
      expect(response.code).to eql 201
    end

    context 'bad request' do

      let(:invalid_params) {
        _prms = Factory.valid_data_transfer_params
        _prms.delete(:name)
        _prms
      }

      let(:response) {
        api.create_data_transfer(offer['id'], invalid_params)
      }

      it 'returns 400 bad request with invalid params' do
        expect(response.code).to eql 400
      end

      it 'returns an error message' do
        expect(response).to eql(
          'status' => 'Create Failed',
          'message' => { 'name' => ['This field is required.'] }
        )
      end

    end

  end

  context '#update_data_transfer', :vcr do

    let(:update_params) {{
      status_id: 2
    }}

    let(:response) {
      api.update_data_transfer(offer['id'], data_transfer['id'], update_params)
    }

    it 'updates a data transfer' do
      response
      expect(api.data_transfer(data_transfer['id'])['status_id']).to eql update_params[:status_id]
    end

    it 'returns success status' do
      expect(response['status']).to eql('Update Successful')
    end

    it 'returns 200 OK' do
      expect(response.code).to eql 200
    end

    context 'when data transfer id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) {
        api.update_data_transfer(offer['id'], bad_id, status_id: 2)
      }

      it 'returns 404' do
        expect(response.code).to eql 404
      end

      it 'returns not found error message' do
        expect(response['message']).to eql 'Data Transfer not found under this offer.'
      end

      it 'returns error status' do
        expect(response['status']).to eql 'Update Failed'
      end

    end

  end

  context '#delete_data_transfer', :vcr do

    let(:response) {
      api.delete_data_transfer(data_transfer['id'])
    }

    it 'deletes a data transfer' do
      response
      expect(api.data_transfer(data_transfer['id']).code).to eql 404
    end

    it 'returns correct status' do
      expect(response['status']).to eql 'Request Successful'
    end

    it 'returns correct message' do
      expect(response['message']).to eql 'DataTransfer Succesfully Deleted'
    end

    it 'returns 200 OK' do
      expect(response.code).to eql 200
    end

    context 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      let(:response) {
        api.delete_data_transfer(bad_id)
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


