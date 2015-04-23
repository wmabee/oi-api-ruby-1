module OiApi

  class Client

    module Offers

      def offers(options = {})
        self.class.get("/offers/", options_with_basic_auth(options))
      end

      def offer(offer_id, options = {})
        self.class.get("/offers/#{offer_id}/", options_with_basic_auth(options))
      end

      def create_offer(options = {})
        self.class.post('/offers/', options_with_basic_auth(options))
      end

      def update_offer(offer_id, options = {})
        self.class.put("/offers/#{offer_id}/", options_with_basic_auth(options))
      end

      # DELETE not allowed for offers?
      #def delete_offer(offer_id, options = {})
      #  self.class.delete("/offers/#{offer_id}/", options_with_basic_auth(options))
      #end

    end

  end

end
