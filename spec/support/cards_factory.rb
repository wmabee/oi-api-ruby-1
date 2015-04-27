module CardsFactory

  def valid_cards_params(params = {})
    {
      number: 0000111122223333
      exp_month: 12
      exp_year: 16
      cvc: 111
      name: 'John Tester'
      address_line1: '123 Elm Street'
      address_line2: 'Apt 2'
      address_city: 'Rochester'
      address_zip: 14605
      address_state: 'NY'
      address_country: 'US'
      default: true
    }
  end

  def create_card(params = {})
  end

  def delete_all_cards
  end

end
