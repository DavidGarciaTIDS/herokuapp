*** Settings ***
Documentation       Process for the landing page
Library             SeleniumLibrary
Library             RequestsLibrary
Library             String
Resource            ../../Data/BasicAuthVariables.robot

*** Keywords ***
Basic Auth Page loaded
    run keyword and continue on failure    handle alert

Login to the BasicAuth
    [Arguments]    ${Username}    ${Password}   ${StatusExpected}
    ${curURL}=   get location
    ${curURL}=   fetch from right    ${curURL}    //
    ${login}=    Set Local Variable   ${Username}:${Password}@${curURL}
    ${status}=    head   https://${login}  expected_status=${StatusExpected}
    sleep    2s
