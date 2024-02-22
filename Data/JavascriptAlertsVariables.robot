*** Settings ***
Resource    Variables.robot

*** Variables ***

#JavaScriptAlerts
${JavaScriptAlertsTitle}=       JavaScript Alerts
${SimpleAlertButton}=           xpath=//*[@id="content"]/div/ul/li[1]/button
${ConfirmAlertButton}=          xpath=//*[@id="content"]/div/ul/li[2]/button
${PromptAlertButton}=           xpath=//*[@id="content"]/div/ul/li[3]/button
${JSAlertText}=                 This is a text
