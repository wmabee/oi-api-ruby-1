module OiApi

  class Client

    module Advertisers

      def advertisers(options = {})
        get '/advertisers/', options
      end

      def advertiser(advertiser_id, options = {})
        get "/advertisers/#{advertiser_id}/", options
      end

      def create_advertiser(options = {})
        post '/advertisers/', options
      end

      def update_advertiser(advertiser_id, options = {})
        put "/advertisers/#{advertiser_id}/", options
      end

      def delete_advertiser(advertiser_id, options = {})
        delete "/advertisers/#{advertiser_id}/", options
      end

    end

  end

end
