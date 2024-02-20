*** Settings ***
Documentation       A test suite with a single test for JQuery Menus.
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot

*** Keywords ***

Navigate path
    [Arguments]    @{path}
    FOR    ${i}    IN   @{path}
        log    ${i}
        Wait Until Page Contains Element    ${i}
        sleep   1s
        Click Element    ${i}
    END