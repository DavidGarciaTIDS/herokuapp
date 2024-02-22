*** Settings ***
Documentation       This is a test suite for downloading and verifing files
Library             SeleniumLibrary
Library             OperatingSystem
Library             String
Library             Browser
Library             ../../Libraries/CustomLibrary.py
Resource            ../../Data/FileDownloadVariables.robot


*** Keywords ***
Download File
    ${currentURL}=    seleniumlibrary.get location
    browser.open browser    ${currentURL}
    sleep    2s
    @{Links}=    Get WebElements    ${FileDownloadLinks}
    FOR    ${link}    IN    @{Links}
        ${href}=    Get Element Attribute    ${link}    href
        ${fileName}=    SeleniumLibrary.get text    ${link}
        run keyword and continue on failure    Browser.Download    ${href}     ${DownloadPath}${fileName}
        Validate Downloaded File    ${fileName}
    END

Validate Downloaded File
        [Arguments]    ${fileName}
        run keyword and continue on failure    Wait Until Created    ${DownloadPath}${fileName}
        remove file    ${DownloadPath}${fileName}

