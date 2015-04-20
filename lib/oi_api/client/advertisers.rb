module OiApi

  class Client

    module Advertisers

      def advertisers(options = {})
        self.class.get '/advertisers/', options_with_basic_auth(options)
      end

      def advertiser(advertiser_id, options = {})
        self.class.get "/advertisers/#{advertiser_id}/", options_with_basic_auth(options)
      end

      def create_advertiser(options = {})
        self.class.post '/advertisers/', options_with_basic_auth(options)
      end

      def update_advertiser(advertiser_id, options = {})
        self.class.put "/advertisers/#{advertiser_id}/", options_with_basic_auth(options)
      end

    end

  end

end
