module OiApi

  class Client

    module AutoResponders

      def all_auto_responders(options = {})
        get '/autoresponders/', options
      end

      def auto_responders(offer_id, options = {})
        get "/offers/#{offer_id}/autoresponders/", options
      end

      def auto_responder(offer_id, auto_responder_id, options = {})
        get "/offers/#{offer_id}/autoresponders/#{auto_responder_id}/", options
      end

      def create_auto_responder(offer_id, options = {})
        post "/offers/#{offer_id}/autoresponders/", options
      end

      def update_auto_responder(offer_id, auto_responder_id, options = {})
        put "/offers/#{offer_id}/autoresponders/#{auto_responder_id}/", options
      end

      #def delete_auto_responder(offer_id, auto_responder_id, options = {})
      #  delete "/offers/#{offer_id}/autoresponders/#{auto_responder_id}/", options
      #end

    end

  end

end
