*** Settings ***
Library             SeleniumLibrary
Resource            ../../Data/Variables.robot




*** Keywords ***

Dynamic Controls Page loaded
    wait until page contains    ${DynamicControlsTitle}

Remove Checkbox by button
    click element    ${DynamicControlsCBButton}
    wait until page does not contain element    ${DynamicControlsCheckbox}
    sleep       2s

Enable Input by button
    click element    ${DynamicControlsInputButton}
    wait until element is enabled    ${DynamicControlsInput}
    sleep       2s