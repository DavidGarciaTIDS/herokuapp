*** Settings ***
Library           SeleniumLibrary
Resource    ../../Data/Variables.robot

*** Keywords ***

Count Elements
    [Arguments]    ${Expected}=${NumberOfElements}
    ${count}=    SeleniumLibrary.get element count    ${DeleteElements}
    RETURN    ${count}
