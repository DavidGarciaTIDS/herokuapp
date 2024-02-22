*** Settings ***
Documentation           A test suite with a single test for valid login.
Library                 SeleniumLibrary
Resource                ../../Data/PressKeysVariables.robot


*** Keywords ***
Press Key on Element
    [Arguments]    ${key}   ${element}
    SeleniumLibrary.Press Keys    ${element}    ${key}

Validate Key Pressed
    [Arguments]    ${Output}       ${key}
    ${text}=    SeleniumLibrary.Get Text    ${Output}
    run keyword and continue on failure    Should Be Equal    ${text}    You entered: ${key}