module OffersFactory

  def valid_offer_params(params = {})
    advertiser_id = if params.has_key?(:advertiser_id)
      params.delete(:advertiser_id)
    else
      create_advertiser['id']
    end

    _prms = {
      advertiser_id: advertiser_id,
      name: "Special Product #{random_string}",
      category_id: 1010,
      status_id: 9,
      headline: "Buy our product today #{random_string}",
      body: "Try for FREE for a limited time only. This is your one-and-only chance! #{random_string}",
      cpl_price: 1.0,
      global_cap: 1000,
      monthly_cap: 300,
      daily_cap: 10,
      image1: 'http://www.opt-intelligence.com/images/cats120.png',
      image2: 'http://www.opt-intelligence.com/images/cats88.png',
      data_points: ['EM', 'FN'],
      targeting: {
        min_age: 18,
        max_age: 45,
        zip: {
          include: true,
          zip_codes: ['14226','10009','10023','11211']
        },
        gender: 'm',
        country: {
          include: true,
          countries: ['USA']
        },
        third_party: { }
      },
      comment:'Hello there'
    }.merge(params)
  end

  def create_offer(params = {})
    _params = valid_offer_params.merge(params)
    api_client.create_offer(_params)
  end

  def delete_all_offers
    api_client.offers.each do |offer|
      api_client.delete_offer(offer['id'])
    end
  end

end
