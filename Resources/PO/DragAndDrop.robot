*** Settings ***
Documentation       This is a sample test suite for drag and drop functionality
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot

*** Keywords ***
Drag And Drop A to B
    [Arguments]        ${From}   ${To}
    sleep    2s
    SeleniumLibrary.drag and drop    ${From}    ${To}
    sleep    2s

Validate Drag And Drop
    [Arguments]        ${From}   ${To}    ${ColmnA}   ${ColmnB}
    ${ItemA}    SeleniumLibrary.Get Text    ${From}//header
    ${ItemB}    SeleniumLibrary.Get Text    ${To}//header
    Should Be Equal As Strings    ${ColmnA}   ${ItemA}
    Should Be Equal As Strings    ${ColmnB}   ${ItemB}


