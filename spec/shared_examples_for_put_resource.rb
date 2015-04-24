RSpec.shared_examples 'PUT resource' do |resource_name|

  it "updates an #{resource_name}" do
    expect(response).to eql('status' => 'Update Successful')
  end

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  context 'bad request' do

    it 'returns 400 bad request with invalid params' do
      expect(bad_response.code).to eql 400
    end

    it 'returns an error message' do
      expect(bad_response).to eql(
        'status' => 'Update Failed',
        'message' => {
          'status_id' => ['Invalid Status Id']
        }
      )
    end

  end

  context "when #{resource_name} not found" do

    it 'returns 404' do
      expect(response.code).to eql 404
    end

    it 'returns not found error message' do
      expect(response['message']).to eql 'Record not found'
    end

    it 'returns error status' do
      expect(response['status']).to eql 'Update Failed'
    end

  end

end
