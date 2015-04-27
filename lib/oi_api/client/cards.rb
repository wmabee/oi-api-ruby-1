module OiApi

  class Client

    module Cards

      def cards(advertiser_id, options = {})
        get "/advertisers/#{advertiser_id}/cards/", options
      end

      def card(card_id, options = {})
        get "/cards/#{card_id}/", options
      end

      def create_card(advertiser_id, options = {})
        post "/advertisers/#{advertiser_id}/cards/", options
      end

      def update_card(card_id, options = {})
        put "/cards/#{card_id}/", options
      end

      def delete_card(card_id, options = {})
        delete "/cards/#{card_id}/", options
      end

    end

  end

end
