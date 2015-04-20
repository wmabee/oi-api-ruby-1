module OiApi

  class Client

    module Offers

      def offer(offer_id, options = {})
        self.class.get("/offers/#{offer_id}/", options_with_basic_auth(options))
      end

      def create_offer(options = {})
        self.class.post('/offers/', options_with_basic_auth(options))
      end

      def update_offer(offer_id, options = {})
        self.class.put("/offers/#{offer_id}/", options_with_basic_auth(options))
      end

    end

  end

end
