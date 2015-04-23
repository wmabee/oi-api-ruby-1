module OiApi

  class Client

    module DataTransfers

      def data_transfers(options = {})
        get("/datatransfers/", options)
      end

      def data_transfer(data_transfer_id, options = {})
        get("/datatransfers/#{data_transfer_id}/", options)
      end

      def create_data_transfer(offer_id, options = {})
        post("/offers/#{offer_id}/datatransfers/", options)
      end

      def update_data_transfer(offer_id, data_transfer_id, options = {})
        put("/offers/#{offer_id}/datatransfers/#{data_transfer_id}/", options)
      end

      def delete_data_transfer(data_transfer_id, options = {})
        delete("/datatransfers/#{data_transfer_id}/", options)
      end

    end

  end

end
