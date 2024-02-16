*** Settings ***
Documentation       This is a test suite for the dynamic content page
Library             SeleniumLibrary
Library             Collections
Resource            ../../Data/Variables.robot

*** Keywords ***
Dynamic Content Page loaded
    wait until page contains    ${DynamicContentTitle}

Validate Dynamic Content
    @{CharList}=    set local variable  Empt
    @{imglist}=    get webelements    ${DynamicContentImages}
    FOR    ${src}    IN    @{imglist}
        run keyword if    @{CharList} < 5    insert into list   ${CharList}    ${src}
    END


Remove Character From List
    @{imglist}=    get webelements    ${DynamicContentImages}
    FOR   ${images}    IN    @{imglist}
            ${src}=     get element attribute    ${images}  src
            run keyword if    ${src}  IN   @{Characters}    Remove values from list     ${Characters}   ${src}
        END
        sleep   2s
        reload page
