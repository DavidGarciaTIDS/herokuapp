*** Settings ***
Documentation       A test suite with a single test for Javascript Alerts.
Library             SeleniumLibrary
Resource            ../../Data/JavascriptAlertsVariables.robot

*** Keywords ***

Simple Alert
    click element       ${SimpleAlertButton}
    sleep    1s
    handle alert
    alert should not be present

Confirm Alert
    [Arguments]    ${Option}=ACCEPT
    click element       ${ConfirmAlertButton}
    sleep    1s
    handle alert    ${Option}
    alert should not be present


Prompt Alert
    [Arguments]   ${AlertText}=''    ${Option}=ACCEPT
    click element       ${PromptAlertButton}
    sleep    1s
    input text into alert    ${AlertText}    ${Option}
    alert should not be present
