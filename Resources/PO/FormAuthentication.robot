*** Settings ***
Documentation       A test suite with a single test for valid login.
Library             SeleniumLibrary
Resource            ../../Data/FormAuthenticationVariables.robot


*** Keywords ***
Login to the Form Authentication
    [Arguments]         ${username}    ${password}
    input text          ${FormAuthenticationUsername}    ${username}
    input password      ${FormAuthenticationPassword}    ${password}
    click button        ${FormAuthenticationButton}
    sleep               1s


Validate Form Authentication
    [Arguments]    ${ExpectedUsername}    ${ExpectedPassword}
    wait until page contains element    ${FormAuthenticationAlert}
    sleep    2s

    IF    ${ExpectedUsername} and ${ExpectedPassword}
        element should contain    ${FormAuthenticationAlert}    You logged into a secure area!
        sleep   2s
        click element    ${FALogout}
    ELSE IF    '!${ExpectedPassword}' and ${ExpectedUsername}
        element should contain      ${FormAuthenticationAlert}    Your password is invalid!
    ELSE
        element should contain      ${FormAuthenticationAlert}    Your username is invalid!
    END