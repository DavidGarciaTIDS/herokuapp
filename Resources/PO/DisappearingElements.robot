*** Settings ***
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot


*** Keywords ***

Disappearing Elements Page loaded
    wait until page contains    ${DisappearingElementsTitle}

Refresh Until Visibile
    ${loop}=      run keyword and return status    page should not contain element    ${Gallery}
    [Arguments]    ${Visibility}
    WHILE    ${loop}
       reload page
       sleep    2s
       ${loop}=    run keyword and return status    page should not contain element    ${Gallery}
    END
    sleep    4s

Refresh Until Not Visibile
    ${loop}=      run keyword and return status    page should contain element    ${Gallery}
    [Arguments]    ${Visibility}
    WHILE    ${loop}
       reload page
       sleep    2s
       ${loop}=    run keyword and return status    page should contain element    ${Gallery}
    END
    sleep    4s