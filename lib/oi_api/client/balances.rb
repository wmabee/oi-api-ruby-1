module OiApi

  class Client

    module Balances

      def balance(advertiser_id, options = {})
        get "/advertisers/#{advertiser_id}/balance/", options
      end

    end

  end

end
