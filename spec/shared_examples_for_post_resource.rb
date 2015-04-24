RSpec.shared_examples 'POST resource' do |resource_name|

  it 'returns a success message' do
    expect(response['message']).to eql("#{resource_name.capitalize} successfully created")
  end

  it 'returns a success status' do
    expect(response['status']).to eql('Request Successful')
  end

  it 'returns 201 created' do
    expect(response.code).to eql 201
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

end
