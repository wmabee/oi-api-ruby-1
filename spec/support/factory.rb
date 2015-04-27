require 'cgi'
require 'securerandom'
require 'advertisers_factory'
require 'cards_factory'
require 'charges_factory'
require 'subscriptions_factory'
require 'balances_factory'
require 'offers_factory'
require 'data_transfers_factory'
require 'auto_responders_factory'
require 'reports_factory'

class Factory

  extend AdvertisersFactory
  extend CardsFactory
  extend ChargesFactory
  extend SubscriptionsFactory
  extend BalancesFactory
  extend OffersFactory
  extend DataTransfersFactory
  extend AutoRespondersFactory
  extend ReportsFactory

  class << self

    def test_oi_username
      ENV['TEST_OI_USERNAME']
    end

    def test_oi_password
      ENV['TEST_OI_PASSWORD']
    end

    def api_client
      @api_client ||= OiApi.new(
        username: test_oi_username,
        password: test_oi_password
      )
    end

    def random_string
      SecureRandom.hex
    end

  end

end
