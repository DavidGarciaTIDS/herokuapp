*** Settings ***
Documentation       Common Processes for Web Testing
Library             SeleniumLibrary
Library             Browser
Resource            ../Data/Variables.robot

*** Keywords ***
Start Web Test
    SeleniumLibrary.open browser    about:blank     ${BROWSER}
    SeleniumLibrary.maximize browser window
    SeleniumLibrary.go to           ${URL}

End Web Test
    SeleniumLibrary.close browser

#Common Keywords

Validate Page loaded
    [Arguments]    ${expected}
    wait until page contains    ${expected}     10s

Click on Element
    [Arguments]    ${Element}    ${Repetitions}=1
    FOR    ${i}    IN RANGE    ${Repetitions}
        SeleniumLibrary.click element    ${Element}
    END