module OiApi

  class Client

    module Charges

      def create_charge(advertiser_id, options = {})
        post "/advertisers/#{advertiser_id}/charges/", options
      end

    end

  end

end
