module AutoRespondersFactory

  def valid_auto_responder_params(params = {})
    {
      status_id:  1,
      subject: 'Here\'s a good subject line',
      from_name: 'Our Company',
      body_html: 'some html here',
      body_text: 'some text here'
    }.merge(params)
  end

  def create_auto_responder(params = {})
    offer_id = if params.has_key?(:offer_id)
      params.delete(:offer_id)
    else
      create_offer['id']
    end

    _params = valid_auto_responder_params(params)
    api_client.create_auto_responder(offer_id, _params)
  end

  def delete_all_auto_responders
  end

end
