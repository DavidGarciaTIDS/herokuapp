*** Settings ***
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot

*** Keywords ***
Drag And Drop Page loaded
    Wait Until Page Contains    ${DragAndDropTitle}

Drag And Drop A to B
    [Arguments]        ${From}   ${To}
    sleep    2s
    drag and drop    ${From}    ${To}
    sleep    2s


Validate Drag And Drop
    [Arguments]        ${From}   ${To}    ${ColmnA}   ${ColmnB}
    ${ItemA}    Get Text    ${From}//header
    ${ItemB}    Get Text    ${To}//header
    Should Be Equal As Strings    ${ColmnA}   ${ItemA}
    Should Be Equal As Strings    ${ColmnB}   ${ItemB}


