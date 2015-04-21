require 'helper'

describe OiApi::Client::Advertisers do

  describe '#advertisers', :vcr do

    let(:response) {
      if api_client.advertisers.empty?
        api_client.create_advertiser(valid_advertiser_params)
        api_client.create_advertiser(valid_advertiser_params)
      end
      api_client.advertisers
    }

    it 'returns correct http code' do
      response.code.must_equal 200
    end

    it 'returns HTTParty::Response' do
      response.must_be_instance_of Array
    end

    it 'returns all advertisers' do
      response.size.must_equal 2
    end

  end

  describe '#advertiser', :vcr do

    let(:advertiser) {
      if api_client.advertisers.empty?
        api_client.create_advertiser(valid_advertiser_params)
      end
      api_client.advertisers.last
    }

    let(:response) {
      api_client.advertiser(advertiser['id'])
    }

    it 'returns correct http code' do
      response.code.must_equal 200
    end

    it 'returns HTTParty::Response' do
      response.must_be_instance_of Hash
    end

    it 'returns the advertiser' do
      response.must_equal(advertiser)
    end

    describe 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns not found error message' do
        api_client.advertiser(bad_id)['message'].must_equal('Record not found')
      end

      it 'returns not found error message' do
        api_client.advertiser(bad_id)['status'].must_equal('error')
      end

      it 'returns 404' do
        api_client.advertiser(bad_id).code.must_equal(404)
      end

    end

  end

  describe '#create_advertiser', :vcr do

    it 'creates an advertiser' do
      response = api_client.create_advertiser(valid_advertiser_params)
      response['status'].must_equal('Create Successful')
      response['message'].must_equal('Advertiser successfully created')
    end

    it 'returns 201 created' do
      api_client.create_advertiser(valid_advertiser_params).code.must_equal(201)
    end

    describe 'bad request' do

      let(:invalid_advertiser_params) {
        _prms = valid_advertiser_params
        _prms.delete(:name)
        _prms
      }

      it 'returns 400 bad request when name already exists' do
        _prms = valid_advertiser_params
        api_client.create_advertiser(_prms)
        api_client.create_advertiser(_prms).code.must_equal(400)
      end

      it 'returns 400 bad request with invalid params' do
        api_client.create_advertiser(invalid_advertiser_params).code.must_equal(400)
      end

      it 'returns an error message' do
        api_client.create_advertiser(invalid_advertiser_params).must_equal(
          'status' => 'Create Failed',
          'message' => {
            'name' => ['This field is required.']
          }
        )
      end

    end

  end

  describe '#update_advertiser', :vcr do

    it 'updates an advertiser' do
      api_client.update_advertiser(last_advertiser_id, status_id: 2).must_equal(
        'status' => 'Update Successful'
      )
    end

    it 'returns 200 OK' do
      api_client.update_advertiser(last_advertiser_id, status_id: 2).code.must_equal(200)
    end

    describe 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns 404' do
        api_client.update_advertiser(bad_id, status_id: 2).code.must_equal(404)
      end

      it 'returns not found error message' do
        api_client.update_advertiser(bad_id, status_id: 2)['message'].must_equal('Record not found')
      end

      it 'returns error status' do
        api_client.update_advertiser(bad_id, status_id: 2)['status'].must_equal('error')
      end

    end

  end

  describe '#delete_advertiser', :vcr do

    it 'deletes an advertiser' do
      response = api_client.delete_advertiser(last_advertiser_id)
      response['status'].must_equal('Delete Successful')
      response['message'].must_equal('Advertiser Succesfully deleted')
    end

    it 'returns 200 OK' do
      api_client.delete_advertiser(last_advertiser_id).code.must_equal(200)
    end

    describe 'when advertiser_id not found' do

      let(:bad_id) { 99999999999999 }

      it 'returns not found error message' do
        api_client.delete_advertiser(bad_id)['message'].must_equal('Record not found')
      end

      it 'returns not found error message' do
        api_client.delete_advertiser(bad_id)['status'].must_equal('error')
      end

      it 'returns 404' do
        api_client.delete_advertiser(bad_id).code.must_equal(404)
      end

    end

  end

  def valid_advertiser_params(params = {})
    default_params = {
      'name': "new advertiser #{SecureRandom.hex}",
      'status_id': 1,
      'category_id': 1010
    }.merge(params)
  end

  def last_advertiser_id
    if api_client.advertisers.empty?
      api_client.create_advertiser(valid_advertiser_params)
    end
    api_client.advertisers.last['id']
  end

end
