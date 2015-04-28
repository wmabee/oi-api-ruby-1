module ChargesFactory

  def valid_charge_params(params = {})
    {
      card_id: 123934354353432,
      amount: 100
    }
  end

  def create_charge(params = {})
  end

  def delete_all_charges
  end

end
