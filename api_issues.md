## Soft deleting advertisers?

Creating an advertiser named "advertiser 1", then deleting it, then attempting to create another advertiser with the same name yields {"status"=>"Create Failed", "message"=>"Name exists"} even though doing a get on /advertisers/ returns zero records. I suspect that the deletes via the API are soft deletes and then the create validation is being triggered by the soft deleted records. This is a problem when trying to run automated tests against the API... ideally each test would involve a full setup and breakdown, but the problem described above forces the use of a long random name string (to minimize chance of name reuse) and is probably creating a ton of records upstream.

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

When various operations are carried out on id's that do not exist, there are many inconsistencies in the various responses:

PUT to an invalid advertiser_id (ie: /advertisers/9999999999999/) currently returns:
  HTTP status code: 400
  message: 'No permission to update advertiser'
  status: 'Update Failed'

More appropriate and consistent would be:
  HTTP status code: 404
  message: 'Record not found'
  status: 'error'

-----

GET to an invalid advertiser_id (ie: /advertisers/9999999999999/) currently returns:
  HTTP status code: 400
  message: 'No permission to view advertiser.' 
  status: 'Retrieve Failed'
  
More appropriate and consistent would be:
  HTTP status code: 404
  message: 'Record not found'
  status: 'error'

-----

DELETE to an invalid advertiser_id (ie: /advertisers/9999999999999/) currently returns:
  HTTP status code: 403
  message: 'Operation not allowed' 
  status: 'Request Failed'
  
More appropriate and consistent would be:
  HTTP status code: 404
  message: 'Record not found'
  status: 'error'

