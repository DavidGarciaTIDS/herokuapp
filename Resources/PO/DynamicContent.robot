*** Settings ***
Documentation       This is a test suite for the dynamic content page
Library             SeleniumLibrary
Library             Collections
Resource            ../../Data/Variables.robot

*** Variables ***
@{CharList}

*** Keywords ***
Dynamic Content Page loaded
    wait until page contains    ${DynamicContentTitle}

Validate Dynamic Content
    ${Charlen}=    get length    ${CharList}
    WHILE    ${Charlen} != 5
        log    ${CharList}
        @{imglist}=    get webelements    ${DynamicContentImages}
        FOR    ${img}    IN    @{imglist}
                ${src}=   get element attribute    ${img}    src
                append to list    ${CharList}    ${src}
                log    ${CharList}
        END
        sleep    2s
        ${CharList}=    remove duplicates    ${CharList}
        log    ${CharList}
        reload page
        ${Charlen}=    get length    ${CharList}
    END