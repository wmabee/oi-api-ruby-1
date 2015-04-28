module OiApi

  class Client

    module Cards

      # no GET all?
      #def cards(advertiser_id, options = {})
      #  get "/advertisers/#{advertiser_id}/cards/", options
      #end

      def card(advertiser_id, card_id, options = {})
        get "/advertisers/#{advertiser_id}/cards/#{card_id}/", options
      end

      def create_card(advertiser_id, options = {})
        post "/advertisers/#{advertiser_id}/cards/", options
      end

      def update_card(advertiser_id, card_id, options = {})
        put "/advertisers/#{advertiser_id}/cards/#{card_id}/", options
      end

      # no delete?
      #def delete_card(advertiser_id, card_id, options = {})
      #  delete "/advertisers/#{advertiser_id}/cards/#{card_id}/", options
      #end

    end

  end

end
