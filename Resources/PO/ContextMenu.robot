*** Settings ***
Documentation       A test suite for the Context Menu page.
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot


*** Keywords ***
Context Menu Page loaded
    wait until page contains    ${ContextMenuTitle}

Right Click Context Menu
    sleep    1s
    Open Context Menu   ${ContextMenuArea}
    sleep    0.5s

Validate Alert
    Alert Should Be Present    ${ContextMenuAlertText}

Verify Alert is Gone
    Alert Should Not Be Present