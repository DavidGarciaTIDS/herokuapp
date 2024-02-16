*** Settings ***
Documentation       Common Processes for Web Testing
Library             SeleniumLibrary
Resource            ../Data/Variables.robot

*** Keywords ***
Start Web Test
    open browser    about:blank     ${BROWSER}
    maximize browser window
    go to           ${URL}

End Web Test
    close browser

