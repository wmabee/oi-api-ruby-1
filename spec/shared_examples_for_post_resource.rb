RSpec.shared_examples 'POST resource' do |resource_name|

  it 'creates a new resource' do
    expect(response).to include(
      'status' => 'Create Successful',
      'message' => "#{resource_name.capitalize} successfully created"
    )
  end

  it 'returns 201 created' do
    expect(response.code).to eql 201
  end

  context 'bad request' do

    it 'returns 400 bad request with invalid params' do
      expect(bad_response.code).to eql 400
    end

    it 'returns an error message' do
      expect(bad_response).to eql(
        'status' => 'Create Failed',
        'message' => {
          'name' => ['This field is required.']
        }
      )
    end

    it 'returns 400 bad request when name already exists' do
      _prms = Factory.public_send("valid_#{resource_name}_params")
      api.public_send("create_#{resource_name}", _prms)
      expect(api.public_send("create_#{resource_name}", _prms).code).to eql 400
    end

  end

end
