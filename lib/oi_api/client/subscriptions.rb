module OiApi

  class Client

    module Subscriptions

      def subscriptions(advertiser_id, options = {})
        post "/advertisers/#{advertiser_id}/subscriptions/", options
      end

      def subscription(advertiser_id, subscription_id, options = {})
        get "/advertisers/#{advertiser_id}/subscriptions/#{subscription_id}", options
      end

      def create_subscription(advertiser_id, options = {})
        post "/advertisers/#{advertiser_id}/subscriptions/", options
      end

    end

  end

end
