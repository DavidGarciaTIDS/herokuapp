*** Settings ***
Documentation       A test suite with a single test for Exit Intent
Library             SeleniumLibrary
Library             Browser
Library             ../../Libraries/CustomLibrary.py
Resource            ../../Data/Variables.robot


*** Keywords ***

Exit Intent Page loaded
    Wait Until Page Contains    ${ExitIntentTitle}

Validate Exit Intent
    sleep       2s
    Element Attribute Value Should Be    ${ExitIntentModal}    style    display: none;
    Run Keyword and Continue on Failure    CustomLibrary.move mouse to    30     5
    Element Attribute Value Should Be    ${ExitIntentModal}    style    display: block;
    sleep       2s