*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             String
Library            ../../Libraries/CustomLibrary.py
Resource            ../../Data/Variables.robot


*** Keywords ***

File Download Page loaded
    Wait Until Page Contains    ${FileDownloadTitle}

Download File
    @{Links}=    Get WebElements    ${FileDownloadLinks}
    FOR    ${link}    IN    @{Links}
        Click Link    ${link}
        #Mouse Down On Link    ${link}
        #mouse up    ${link}
        ${href}=    Get Element Attribute    ${link}    href
        ${fileLink}=    Split String From Right    ${href}    /
        Validate Downloaded File    ${fileLink}
    END

Validate Downloaded File
        [Arguments]    ${fileLink}
        ${fileName}=    Set Variable        ${fileLink}[-1]
        log    ${fileName}
        ${fileName}=    Replace String      ${fileName}    %20    ${SPACE}
        Log   ${DownloadPath}${fileName}
        Wait Until Created    ${DownloadPath}${fileName}
