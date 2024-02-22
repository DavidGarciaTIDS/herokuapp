*** Settings ***
Documentation       This is a test suite for the dynamic controls page
Library             SeleniumLibrary
Resource            ../../Data/DynamicControlsVariables.robot

*** Keywords ***
Remove Checkbox by button
    click element    ${DynamicControlsCBButton}
    wait until page does not contain element    ${DynamicControlsCheckbox}

Enable Input by button
    click element    ${DynamicControlsInputButton}
    wait until element is enabled    ${DynamicControlsInput}