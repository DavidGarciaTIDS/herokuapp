*** Settings ***
Resource    Variables.robot

*** Variables ***

#DynamicControls
${DynamicControlsTitle}=        Dynamic Controls
${DynamicControlsCBButton}=     xpath=//form[@id="checkbox-example"]//button
${DynamicControlsCheckbox}=     xpath=//*[@id="checkbox"]//input[type="checkbox"]
${DynamicControlsInputButton}=  xpath=//form[@id="input-example"]//button
${DynamicControlsInput}=        xpath=//*[@id="input-example"]//input
