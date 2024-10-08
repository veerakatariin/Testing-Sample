# Testing Sample

For this testing sample I chose an API, because I have more experience with website testing and wanted to try this route. I used a couple of hours for this sample and divided it between manual and automation testing.

The chosen API: https://restful-booker.herokuapp.com/apidoc/index.html#api-Booking-CreateBooking 

# Manual Testing 
I created a few manual tests in simple charts. In real life scenario, I would create and maintain the tests with some test maintenance software (Jira etc..). 
The tests should show how I would start defining the manual tests in accordance with the user cases.

Currently, the manual tests test that the basic functionalities work. The next step would be to test that the GET, POST, DELETE requests don't work with incorrect data. For example, the DELETE request should fail when the authorization is not correct and the POST request should fail when the body of the request, the booking data is incorrect. 


# Automation Testing 
I created a very simple robot framework script that gets information, posts information and deletes it from the API.
The script should give some indication how I would start automatinng the functionalities of the API beginning with the simple requests. 
The tests themselves are very simple and in a real scenario would require more functionalities 


The API certainly has some subtle bugs that popped up during testing. 
For example, the status code for successful deletion of a resource is '201', which I included in the automation scripts, but would be fairly misleading in a real life scenario. 
Additionally, for the sake of this exercise, the authentication token has been added to Github, which would not be allowed in a real scenario..
