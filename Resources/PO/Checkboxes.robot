*** Settings ***
Documentation       This is a test suite for the checkboxes page
Library             SeleniumLibrary
Library             String
Resource            ../../Data/Variables.robot


*** Keywords ***
Validate Checkboxes are Checked
    [Arguments]    ${index}
        ${locator}=    catenate    ${CheckboxesOnPage}  [${index}]
        Checkbox Should Be Selected   ${locator}

Tick box
    [Arguments]    ${index}
        ${locator}=    catenate    ${CheckboxesOnPage}  [${index}]
        Select Checkbox  ${locator}
