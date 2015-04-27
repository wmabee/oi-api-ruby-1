module AdvertisersFactory

  def valid_advertiser_params(params = {})
    {
      'name': "new advertiser #{random_string}",
      'status_id': 1,
      'category_id': 1010
    }.merge(params)
  end

  def create_advertiser(params = {})
    _params = valid_advertiser_params.merge(params)
    api_client.create_advertiser(_params)
  end

  def delete_all_advertisers
    api_client.advertisers.each do |advertiser|
      api_client.delete_advertiser(advertiser['id'])
    end
  end

end
