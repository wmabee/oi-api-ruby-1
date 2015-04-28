module AutoRespondersFactory

  def valid_auto_responder_params(params = {})
    {
      status_id:  1,
      subject: 'Here\'s a good subject line',
      from_name: 'Our Company',
      body_html: 'some html here',
      body_text: 'some text here'
    }
  end

  def create_auto_responder(params = {})
  end

  def delete_all_auto_responders
  end

end
