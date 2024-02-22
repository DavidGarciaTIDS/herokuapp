*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             Browser
Library             ../../Libraries/CustomLibrary.py
Resource            ../../Data/FloatingMenuVariables.robot


*** Keywords ***
Scroll To Bottom
    scroll element into view        ${FloatingMenuFooter}
    sleep    1s

Validate Floating Menu
    ${menu}=    Get WebElement      ${FloatingMenuHeader}
    click element    ${menu}
