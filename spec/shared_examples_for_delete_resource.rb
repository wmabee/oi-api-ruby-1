RSpec.shared_examples 'DELETE resource' do |resource_name|

  it "deletes a #{resource_name}" do
    expect(response).to include(
      'status' => 'Delete Successful',
      'message' => "#{resource_name.capitalize} Succesfully deleted"
    )
  end

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  context "when #{resource_name} not found" do

    it 'returns not found error message' do
      expect(not_found_response['message']).to eql 'Record not found'
    end

    it 'returns not found error message' do
      expect(not_found_response['status']).to eql 'Request Failed'
    end

    it 'returns 404' do
      expect(not_found_response.code).to eql 404
    end

  end

end
