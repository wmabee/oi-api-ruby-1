OiApi
  has a version
  configuration
    .content_type
      has a default
    .password
      defaults nil
    .username
      defaults nil
    .user_agent
      has a default
    .format
      has a default
    .api_endpoint
      has a default

OiApi::Client::DataTransfers
  #delete_data_transfer
    it should behave like DELETE resource
      deletes a data transfer (FAILED - 1)
      returns the correct status (FAILED - 2)
      returns the correct message (FAILED - 3)
      returns 200 OK
      when data_transfer not found
        returns not found error message (FAILED - 4)
        returns not found error status (FAILED - 5)
        returns 404 (FAILED - 6)
  #data_transfer
    it should behave like GET resource
      returns 200 OK
      returns HTTParty::Response
      returns the resource
      when data_transfer_id not found
        returns not found error message (FAILED - 7)
        returns not found error message
        returns 404 (FAILED - 8)
  #data_transfers
    it should behave like GET resources
      returns 200 OK
      returns HTTParty::Response
      returns all resources
  #update_data_transfer
    it should behave like PUT resource
      returns the correct status (FAILED - 9)
      returns the correct message (FAILED - 10)
      returns 200 OK
      when data_transfer not found
        returns 404 (FAILED - 11)
        returns not found error message (FAILED - 12)
        returns error status
      bad request
        returns 400 bad request with invalid params
        returns an error message (FAILED - 13)
        returns an error status
  #create_data_transfer
    it should behave like POST resource
      returns a success message (FAILED - 14)
      returns a success status (FAILED - 15)
      returns 201 created (FAILED - 16)
      bad request
        returns 400 bad request with invalid params
        returns an error message
        returns an error status

OiApi::Client::Advertisers
  #delete_advertiser
    it should behave like DELETE resource
      deletes a data transfer (FAILED - 17)
      returns the correct status
      returns the correct message
      returns 200 OK
      when advertiser not found
        returns not found error message (FAILED - 18)
        returns not found error status
        returns 404 (FAILED - 19)
  #advertiser
    it should behave like GET resource
      returns 200 OK
      returns HTTParty::Response
      returns the resource
      when advertiser_id not found
        returns not found error message (FAILED - 20)
        returns not found error message
        returns 404 (FAILED - 21)
  #advertisers
    it should behave like GET resources
      returns 200 OK
      returns HTTParty::Response
      returns all resources
  #update_advertiser
    it should behave like PUT resource
      returns the correct status (FAILED - 22)
      returns the correct message (FAILED - 23)
      returns 200 OK
      when advertiser not found
        returns 404 (FAILED - 24)
        returns not found error message (FAILED - 25)
        returns error status
      bad request
        returns 400 bad request with invalid params
        returns an error message
        returns an error status
  #create_advertiser
    it should behave like POST resource
      returns a success message
      returns a success status (FAILED - 26)
      returns 201 created
      bad request
        returns 400 bad request with invalid params
        returns an error message
        returns an error status

OiApi::Client::Reports
  #reports
    retrieves the last 60 days of data
    returns a report summary (FAILED - 27)
    it should behave like GET resources
      returns 200 OK
      returns HTTParty::Response
      returns all resources

OiApi::Client::Offers
  #update_offer
    it should behave like PUT resource
      returns the correct status (FAILED - 28)
      returns the correct message
      returns 200 OK
      when offer not found
        returns 404
        returns not found error message
        returns error status
      bad request
        returns 400 bad request with invalid params
        returns an error message
        returns an error status
  #offer
    it should behave like GET resource
      returns 200 OK
      returns HTTParty::Response
      returns the resource
      when offer_id not found
        returns not found error message (FAILED - 29)
        returns not found error message (FAILED - 30)
        returns 404 (FAILED - 31)
  #offers
    it should behave like GET resources
      returns 200 OK
      returns HTTParty::Response
      returns all resources
  #create_offer
    it should behave like POST resource
      returns a success message
      returns a success status
      returns 201 created
      bad request
        returns 400 bad request with invalid params
        returns an error message
        returns an error status

Failures:

  1) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource deletes a data transfer
     Failure/Error: expect(api.public_send(resource_name, resource_id).code).to eql 404
       
       expected: 404
            got: 400

  2) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource returns the correct status
     Failure/Error: expect(response['status']).to eql('Delete Successful')
       
       expected: "Delete Successful"
            got: "Request Successful"

  3) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource returns the correct message
     Failure/Error: expect(response['message']).to eql("#{resource_name.capitalize} Succesfully deleted")
       
       expected: "Data_transfer Succesfully deleted"
            got: "DataTransfer Succesfully Deleted"

  4) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource when data_transfer not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql 'Record not found'
       
       expected: "Record not found"
            got: "No permission to update data transfer for offer."

  5) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource when data_transfer not found returns not found error status
     Failure/Error: expect(not_found_response['status']).to eql 'Request Failed'
       
       expected: "Request Failed"
            got: "Delete Failed"

  6) OiApi::Client::DataTransfers#delete_data_transfer it should behave like DELETE resource when data_transfer not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 400

  7) OiApi::Client::DataTransfers#data_transfer it should behave like GET resource when data_transfer_id not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql 'Record not found'
       
       expected: "Record not found"
            got: "No permission to view data transfer for offer."

  8) OiApi::Client::DataTransfers#data_transfer it should behave like GET resource when data_transfer_id not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 400

  9) OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource returns the correct status
     Failure/Error: expect(response['status']).to eql('Request Successful')
       
       expected: "Request Successful"
            got: "Update Successful"
       
  10) OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource returns the correct message
     Failure/Error: expect(response['message']).to eql("#{resource_name.capitalize} successfully updated")
       
       expected: "Data_transfer successfully updated"
            got: nil
       
  11) OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource when data_transfer not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 400

  12) OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource when data_transfer not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql "#{titleized_resource} not found"
       
       expected: "Data Transfer not found"
            got: "Data Transfer not found under this offer."
       
  13) OiApi::Client::DataTransfers#update_data_transfer it should behave like PUT resource bad request returns an error message
     Failure/Error: expect(bad_response['message']).to eql(bad_response_message)
       
       expected: {"status_id"=>["Invalid Status Id"]}
            got: {"status_id"=>["not a valid status"]}

  14) OiApi::Client::DataTransfers#create_data_transfer it should behave like POST resource returns a success message
     Failure/Error: expect(response['message']).to eql("#{resource_name.capitalize} successfully created")
       
       expected: "Data_transfer successfully created"
            got: nil

  15) OiApi::Client::DataTransfers#create_data_transfer it should behave like POST resource returns a success status
     Failure/Error: expect(response['status']).to eql('Request Successful')
       
       expected: "Request Successful"
            got: "Create Successful"

  16) OiApi::Client::DataTransfers#create_data_transfer it should behave like POST resource returns 201 created
     Failure/Error: expect(response.code).to eql 201
       
       expected: 201
            got: 200

  17) OiApi::Client::Advertisers#delete_advertiser it should behave like DELETE resource deletes a data transfer
     Failure/Error: expect(api.public_send(resource_name, resource_id).code).to eql 404
       
       expected: 404
            got: 400

  18) OiApi::Client::Advertisers#delete_advertiser it should behave like DELETE resource when advertiser not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql 'Record not found'
       
       expected: "Record not found"
            got: "Operation not allowed"

  19) OiApi::Client::Advertisers#delete_advertiser it should behave like DELETE resource when advertiser not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 403

  20) OiApi::Client::Advertisers#advertiser it should behave like GET resource when advertiser_id not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql 'Record not found'
       
       expected: "Record not found"
            got: "No permission to view advertiser."

  21) OiApi::Client::Advertisers#advertiser it should behave like GET resource when advertiser_id not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 400

  22) OiApi::Client::Advertisers#update_advertiser it should behave like PUT resource returns the correct status
     Failure/Error: expect(response['status']).to eql('Request Successful')
       
       expected: "Request Successful"
            got: "Update Successful"

  23) OiApi::Client::Advertisers#update_advertiser it should behave like PUT resource returns the correct message
     Failure/Error: expect(response['message']).to eql("#{resource_name.capitalize} successfully updated")
       
       expected: "Advertiser successfully updated"
            got: nil

  24) OiApi::Client::Advertisers#update_advertiser it should behave like PUT resource when advertiser not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 400

  25) OiApi::Client::Advertisers#update_advertiser it should behave like PUT resource when advertiser not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql "#{titleized_resource} not found"
       
       expected: "Advertiser not found"
            got: "No permission to update advertiser."

  26) OiApi::Client::Advertisers#create_advertiser it should behave like POST resource returns a success status
     Failure/Error: expect(response['status']).to eql('Request Successful')
       
       expected: "Request Successful"
            got: "Create Successful"

  27) OiApi::Client::Reports#reports returns a report summary
     Failure/Error: expect(response.keys).to eql ['today', 'yesterday', 'mtd']
       
       expected: ["today", "yesterday", "mtd"]
            got: ["status", "data"]

  28) OiApi::Client::Offers#update_offer it should behave like PUT resource returns the correct status
     Failure/Error: expect(response['status']).to eql('Request Successful')
       
       expected: "Request Successful"
            got: "Request Succesful"

  29) OiApi::Client::Offers#offer it should behave like GET resource when offer_id not found returns not found error message
     Failure/Error: expect(not_found_response['message']).to eql 'Record not found'
       
       expected: "Record not found"
            got: "You do not have permission to perform this action."

  30) OiApi::Client::Offers#offer it should behave like GET resource when offer_id not found returns not found error message
     Failure/Error: expect(not_found_response['status']).to eql 'Retrieve Failed'
       
       expected: "Retrieve Failed"
            got: "Permission Denied"

  31) OiApi::Client::Offers#offer it should behave like GET resource when offer_id not found returns 404
     Failure/Error: expect(not_found_response.code).to eql 404
       
       expected: 404
            got: 403
