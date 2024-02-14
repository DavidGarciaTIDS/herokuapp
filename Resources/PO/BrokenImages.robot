*** Settings ***
Documentation    Process for the landing page
Library           SeleniumLibrary
Library           RequestsLibrary
Resource      ../../Data/Variables.robot

*** Variables ***
${broken}=    0
${functional}=    0
*** Keywords ***
BrokenImages Page loaded
    wait until page contains    ${BrokenImagesTitle}

Validate Broken Images
    @{images}=  Get WebElements    ${BrokenImageContainer}//img
    FOR    ${image}    IN    @{images}
        ${imageSrc}=    Get Element Attribute    ${image}    src
        ${resp}=   Run Keyword And Return Status   HEAD    url=${imageSrc}    expected_status=200
        IF   ${resp}
                log    ${imageSrc} is not broken
        ELSE
                ${broken}=  Evaluate  ${broken}+1
        END
    END
    log     ${broken} broken images found

Validate Functional Images

    @{images}=  Get WebElements    ${BrokenImageContainer}//img
    FOR    ${image}    IN    @{images}
        ${imageSrc}=    Get Element Attribute    ${image}    src
        ${resp}=   Run Keyword And Return Status   HEAD    url=${imageSrc}    expected_status=404
        IF   ${resp}
                ${functional}=  Evaluate  ${functional}+1
        ELSE
                log    ${imageSrc} is not broken
        END
    END
    log     ${functional} functional images found
