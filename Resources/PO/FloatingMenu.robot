*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             Browser
Library             ../../Libraries/CustomLibrary.py
Resource            ../../Data/Variables.robot


*** Keywords ***
Floating Menu Page loaded
    Wait Until Page Contains        ${FloatingMenuTitle}

Scroll To Bottom
    scroll element into view        ${FloatingMenuFooter}
    sleep    1s

Validate Floating Menu
    ${menu}=    Get WebElement      ${FloatingMenuHeader}
    click element    ${menu}
