RSpec.shared_examples 'GET resource' do |resource_name|

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  it 'returns HTTParty::Response' do
    expect(response.class).to eql HTTParty::Response
  end

  it 'returns the resource' do
    keys = Factory.public_send("valid_#{resource_name}_params".to_sym).keys.map(&:to_s)
    expect(response.keys).to include *keys
  end

  context "when #{resource_name}_id not found" do

    it 'returns not found error message' do
      expect(not_found_response['message']).to eql 'Record not found'
    end

    it 'returns not found error message' do
      expect(not_found_response['status']).to eql 'Retrieve Failed'
    end

    it 'returns 404' do
      expect(not_found_response.code).to eql 404
    end

  end

end

