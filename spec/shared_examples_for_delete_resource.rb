RSpec.shared_examples 'DELETE resource' do |resource_name, options|

  it 'returns the correct message' do
    expect(response['message']).to eql("#{titleized_resource(resource_name)} Succesfully deleted")
  end

  it 'returns the correct status' do
    expect(response['status']).to eql('Delete Successful')
  end

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  it 'deletes a data transfer' do
    response
    resource_id = eval("#{resource_name}['id']")
    expect(api.public_send(resource_name, resource_id).code).to eql 404
  end

  context "when #{resource_name} not found" do

    it 'returns not found error message' do
      expect(not_found_response['message']).to eql 'Record not found'
    end

    it 'returns not found error status' do
      expect(not_found_response['status']).to eql 'Request Failed'
    end

    it 'returns 404' do
      expect(not_found_response.code).to eql 404
    end

  end

end
