## Soft deleting advertisers?

Creating an advertiser, then deleting it, then attempting to create another advertiser with the same name results in a validation error. I suspect that DELETEs via the API are soft deletes and then validation is being triggered by the soft deleted records. 

This is a problem when trying to run automated tests against the API. Ideally, each individual test would involve a full setup and breakdown of test records. The problem described above forces the use of a long random string for the name field (to minimize chance of name reuse) and is undoubtedly creating a ton of records upstream.

```
  >> api.advertisers.size
  => 0

  >> api.create_advertiser('name': 'test advertiser', status_id: 1, category_id: 1010)
  => {"status"=>"Create Successful", "message"=>"Advertiser successfully created", "id"=>39437}

  >> api.advertisers.size
  => 1

  >> api.advertisers.first
  => {"id"=>39437, "name"=>"test advertiser", "status_id"=>1, "category_id"=>1010, "key"=>"", "create_date"=>"2015-04-21T16:03:42", "modify_date"=>"2015-04-21T16:03:42"}

  >> api.delete_advertiser(39437)
  => {"status"=>"Delete Successful", "message"=>"Advertiser Succesfully deleted"}

  >> api.advertisers.size
  => 0

  >> api.create_advertiser('name': 'test advertiser', status_id: 1, category_id: 1010)
  => {"status"=>"Create Failed", "message"=>"Name exists"}
```

## HTTP Status codes inconsistent when a resource doesn't exist

When various operations are carried out on id's that do not exist, there are many inconsistencies in the various responses. All of the endpoints below should behave consistently when carrying out a request against a resource that does not exist:

#### PUT /advertisers/9999999999999/ 

Currently returns:
  * HTTP status code: 400
  * message: 'No permission to update advertiser'
  * status: 'Update Failed'

More appropriate and consistent would be:
  * HTTP status code: 404
  * message: 'Record not found'
  * status: 'error'

#### GET /advertisers/9999999999999/

Currently returns:
  * HTTP status code: 400
  * message: 'No permission to view advertiser.' 
  * status: 'Retrieve Failed'
  
More appropriate and consistent would be:
  * HTTP status code: 404
  * message: 'Record not found'
  * status: 'error'

#### DELETE /advertisers/9999999999999/

Currently returns:
  * HTTP status code: 403
  * message: 'Operation not allowed' 
  * status: 'Request Failed'
  
More appropriate and consistent would be:
  * HTTP status code: 404
  * message: 'Record not found'
  * status: 'error'

## Consider nesting and scoping offers under advertisers (ie: /advertisers/123/offers/)

The API should return all offers when performing a GET to /offers/ but should return only offers for a given advertiser when scoped by advertiser_id (GET /advertisers/123/offers/).

## Typo in successful Update for offers

when POSTing to /offers/123/ the "status" param returned has a typo: "Request Succesful" should be "Request Successful"

