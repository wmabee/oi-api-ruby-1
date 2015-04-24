RSpec.shared_examples 'GET resources' do |resource_name|

  it 'returns 200 OK' do
    expect(response.code).to eql 200
  end

  it 'returns HTTParty::Response' do
    expect(response).to be_instance_of Array
  end

  it 'returns all resources' do
    expect(response.size).to eql 2
  end

end
