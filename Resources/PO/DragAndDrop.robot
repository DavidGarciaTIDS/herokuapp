*** Settings ***
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot


*** Keywords ***
Drag And Drop Page loaded
    Wait Until Page Contains    ${DragAndDropTitle}

Drag And Drop
    [Arguments]        ${From}   ${To}


Validate Drag And Drop
    [Arguments]        ${From}   ${To}

