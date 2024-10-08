*** Settings ***
Library    RequestsLibrary
Resource    ../Recources/variables.robot


*** Keywords ***    

HTTP Status Code Should Be OK
    [Arguments]   ${statuscode}
    Should Be Equal As Strings  ${statuscode}   200

HTTP Status Code Should Be Created
    [Arguments]   ${statuscode}
    Should Be Equal As Strings  ${statuscode}   201
