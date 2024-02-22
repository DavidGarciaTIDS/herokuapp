*** Settings ***
Documentation           This file contains keywords for refreshing the page until a certain element is visible or not visible
Library                 SeleniumLibrary
Resource                ../../Data/DisappearingElementsVariables.robot


*** Keywords ***
Refresh Until Visibile
    ${loop}=      run keyword and return status    page should not contain element    ${Gallery}
    WHILE    ${loop}
       reload page
       sleep    1s
       ${loop}=    run keyword and return status    page should not contain element    ${Gallery}
    END
    sleep       1s

Refresh Until Not Visibile
    ${loop}=      run keyword and return status    page should contain element    ${Gallery}
    WHILE    ${loop}
       reload page
       sleep    1s
       ${loop}=    run keyword and return status    page should contain element    ${Gallery}
    END
    sleep       1s