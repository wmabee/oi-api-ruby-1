module SubscriptionsFactory

  def valid_subscription_params(params = {})
    {
      subscription_id: 428,
      payment_amount: 100.0
    }
  end

  def create_subscription(params = {})
  end

  def delete_all_subscriptions
  end

end
