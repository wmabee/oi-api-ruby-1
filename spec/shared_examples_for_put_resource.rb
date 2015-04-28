RSpec.shared_examples 'PUT resource' do |resource_name, options|

  it "returns the correct status" do
    expect(response['status']).to eql('Request Successful')
  end

  it "returns the correct message" do
    expect(response['message']).to eql("#{titleized_resource(resource_name)} successfully updated")
  end

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  context 'bad request' do

    it 'returns 400 bad request with invalid params' do
      expect(bad_response.code).to eql 400
    end

    it 'returns an error message' do
      expect(bad_response['message']).to eql(bad_response_message)
    end

    it 'returns an error status' do
      expect(bad_response['status']).to eql(bad_response_status)
    end
  end

  context "when #{resource_name} not found" do

    it 'returns 404' do
      expect(not_found_response.code).to eql 404
    end

    it 'returns not found error message' do
      expect(not_found_response['message']).to eql "#{titleized_resource(resource_name)} not found"
    end

    it 'returns error status' do
      expect(not_found_response['status']).to eql 'Update Failed'
    end

  end

end
