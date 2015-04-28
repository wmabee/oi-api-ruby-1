module OiApi

  class Client

    module Reports

      def reports(options = {})
        get '/reports/advertisers/', options
      end

    end

  end

end
