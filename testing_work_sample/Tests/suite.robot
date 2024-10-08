*** Settings ***
Library        RequestsLibrary
Resource       ../Recources/variables.robot
Resource       ../Keywords/keywords.robot


*** Test Cases ***
Health Check 
    [Documentation]    Checks that the API is operational 
    ${response}=  GET  https://restful-booker.herokuapp.com/ping
    HTTP Status Code Should Be Created    ${response.status_code}

Get All Booking IDs
    [Documentation]    Gets all the available booking ids  
    ${response}=  GET  ${BASE_URL}
    HTTP Status Code Should Be OK    ${response.status_code}
    Log  ${response.json()}

Create New Booking 
    [Documentation]    Creates a new booking 
    ${response}=        POST   ${BASE_URL}    json=${test_booking} 
    HTTP Status Code Should Be OK    ${response.status_code}
    Set Suite Variable    ${created_booking_id}     ${response.json()['bookingid']}
    Log  ${response.json()}

Get Specific Booking information
    [Documentation]    Gets a specific booking information based on the id 
    ${response}=  GET  ${BASE_URL}/${created_booking_id}
    HTTP Status Code Should Be OK    ${response.status_code}
    Log  ${response.json()}

Delete Booking
    [Documentation]  Deletes a specific booking
    &{headers}=		Create Dictionary		Authorization=${AUTH_TOKEN}
    ${response}=    DELETE    ${BASE_URL}/${created_booking_id}       headers=&{headers}  
    HTTP Status Code Should Be Created    ${response.status_code}
    Log  ${response}  

    