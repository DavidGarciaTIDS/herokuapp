*** Settings ***
Resource    Variables.robot

*** Variables ***

#FormAuthentication
${FormAuthenticationTitle}=     Login Page
${FAUsername}=                  tomsmith
${FAPassword}=                  SuperSecretPassword!
${BADFAUsername}=               tomsmith1
${BADFAPassword}=               SuperS1ecretPassword!
${FormAuthenticationUsername}=  xpath=//*[@id="username"]
${FormAuthenticationPassword}=  xpath=//*[@id="password"]
${FormAuthenticationButton}=    xpath=//*[@id="login"]/button
${FormAuthenticationAlert}=     xpath=//*[@id="flash"]
${FALogout}=                    xpath=//*[@id="content"]/div/a
