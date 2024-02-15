*** Settings ***
Documentation    Process for the landing page
Library           SeleniumLibrary
Library           RequestsLibrary
Library           String
Resource      ../../Data/Variables.robot

*** Variables ***
${curURL}
${login}

*** Keywords ***
BasicAuth Page loaded
    wait until page contains    ${LandingPageTitle}

Login to the BasicAuth
    [Arguments]    ${Username}    ${Password}   ${StatusExpected}
    handle alert    DISMISS
    ${curURL}=   get location
    ${curURL}=   fetch from right    ${curURL}    //
    #log     ${curURL}
    ${login}=    Set Variable   ${Username}:${Password}@${curURL}
    #log     ${login}
    ${status}=    head   https://${login}  expected_status=${StatusExpected}
    sleep    2s
    IF  ${status}
        log     ${status}
        log    ${StatusExpected}
    ELSE
        log     ${status}
        log    ${StatusExpected}
    END
