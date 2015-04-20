module OiApi

  class Client

    module DataTransfers

      def data_transfers(offer_id, options = {})
        self.class.get("/offers/#{offer_id}/datatransfers/", options)
      end

      def data_transfer(offer_id, data_transfer_id, options = {})
        self.class.get("/offers/#{offer_id}/datatransfers/#{data_transfer_id}/", options)
      end

      def create_data_transfer(offer_id, options = {})
        self.class.post("/offers/#{offer_id}/datatransfers/", options)
      end

      def update_data_transfer(offer_id, options = {})
        self.class.put("/offers/#{offer_id}/datatransfers/#{data_transfer_id}/", options)
      end

      def delete_data_transfer(offer_id, data_transfer_id, options = {})
        self.class.delete("/offers/#{offer_id}/datatransfers/#{data_transfer_id}/", options)
      end

    end

  end

end
