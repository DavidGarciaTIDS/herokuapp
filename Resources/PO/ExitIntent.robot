*** Settings ***
Documentation       A test suite with a single test for Exit Intent
Library             SeleniumLibrary
Library             ../../Libraries/CustomLibrary.py
Resource            ../../Data/Variables.robot


*** Keywords ***
Validate Exit Intent
    sleep       1s
    Run Keyword and Continue on Failure    CustomLibrary.move mouse to    200    200
    Element Attribute Value Should Be    ${ExitIntentModal}    style    display: none;
    Run Keyword and Continue on Failure    CustomLibrary.move mouse to    30     5
    sleep       1s
    Element Attribute Value Should Be    ${ExitIntentModal}    style    display: block;