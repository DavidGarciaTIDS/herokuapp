*** Settings ***
Documentation       Common Processes for Web Testing
Library             SeleniumLibrary
Resource            ../Data/Variables.robot

*** Keywords ***
Start Web Test
    SeleniumLibrary.open browser    about:blank     ${BROWSER}
    SeleniumLibrary.maximize browser window
    SeleniumLibrary.go to           ${URL}

End Web Test
    SeleniumLibrary.close browser

Validate Page loaded
    [Arguments]    ${expected}
    wait until page contains    ${expected}
