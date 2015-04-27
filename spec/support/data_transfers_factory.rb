module DataTransfersFactory

  def valid_data_transfer_params(params ={})
    offer_id = if params.has_key?(:offer_id)
      params.delete(:offer_id)
    else
      create_offer['id']
    end

    {
      name: "DT for Special Product 1 #{random_string}",
      status_id: 1,
      type: 'http',
      offer_id: offer_id,
      dt_info: {
        base_url: 'http://www.someclientbaseurl.com',
        method: 'POST'
      },
      data_fields: [
        { email: '#{EM}' },
        { first_name: '#{FN}' },
        { last_name: '#{LN}' },
        { zip: '#{PO}' },
        { gender: '#{G}' }
      ]
    }
  end

  def create_data_transfer(params = {})
    _params = valid_data_transfer_params.merge(params)
    api_client.create_data_transfer(_params[:offer_id], _params)
  end

end
