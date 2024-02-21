*** Settings ***
Documentation           This file contains keywords for refreshing the page until a certain element is visible or not visible
Library                 SeleniumLibrary
Resource                ../../Data/Variables.robot


*** Keywords ***
Refresh Until Visibile
    ${loop}=      run keyword and return status    page should not contain element    ${Gallery}
    WHILE    ${loop}
       reload page
       sleep    2s
       ${loop}=    run keyword and return status    page should not contain element    ${Gallery}
    END
    sleep       2s

Refresh Until Not Visibile
    ${loop}=      run keyword and return status    page should contain element    ${Gallery}
    WHILE    ${loop}
       reload page
       sleep    2s
       ${loop}=    run keyword and return status    page should contain element    ${Gallery}
    END
    sleep       2s