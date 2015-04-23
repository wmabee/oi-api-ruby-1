require 'cgi'
require 'securerandom'

class Factory

  class << self

    def test_oi_username
      ENV.fetch 'TEST_OI_USERNAME', 'cool_test_user_99'
    end

    def test_oi_password
      ENV.fetch 'TEST_OI_PASSWORD', 'super_duper_strong_password'
    end

    def api_client
      @api_client ||= OiApi.new(
        username: test_oi_username,
        password: test_oi_password
      )
    end

    def random_string
      SecureRandom.hex
    end

    def create_advertiser(params = {})
      _params = valid_advertiser_params.merge(params)
      api_client.create_advertiser(_params)
    end

    def create_offer(params = {})
      _params = valid_offer_params.merge(params)
      api_client.create_offer(_params)
    end

    def create_data_transfer(params = {})
      _params = valid_data_transfer_params.merge(params)
      api_client.create_data_transfer(_params[:offer_id], _params)
    end

    def valid_advertiser_params(params = {})
      {
        'name': "new advertiser #{random_string}",
        'status_id': 1,
        'category_id': 1010
      }.merge(params)
    end

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

    def valid_data_transfer_params(params ={})
      offer_id = if params.has_key?(:offer_id)
        params.delete(:offer_id)
      else
        create_offer['id']
      end

      {
        name: "DT for Special Product 1 #{random_string}",
        status_id: 1,
        type: 'http',
        offer_id: offer_id,
        dt_info: {
          base_url: 'http://www.someclientbaseurl.com',
          method: 'POST'
        },
        data_fields: [
          { email: '#{EM}' },
          { first_name: '#{FN}' },
          { last_name: '#{LN}' },
          { zip: '#{PO}' },
          { gender: '#{G}' }
        ]
      }
    end

    def delete_all_offers
      api_client.offers.each do |offer|
        api_client.delete_offer(offer['id'])
      end
    end

    def delete_all_advertisers
      api_client.advertisers.each do |advertiser|
        api_client.delete_advertiser(advertiser['id'])
      end
    end

  end

end
