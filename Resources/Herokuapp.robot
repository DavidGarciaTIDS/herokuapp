*** Settings ***
Resource            ../Resources/PO/AddRemove.robot
Resource            ../Resources/PO/Landing.robot
Resource            ../Resources/PO/BasicAuth.robot
Resource            ../Resources/PO/BrokenImages.robot
Resource            ../Resources/PO/Checkboxes.robot

*** Keywords ***

Verify Landing Page
    Landing.Landing Page loaded

Select Test Link
    [Arguments]    ${TestLink}
    Landing.Select Test Link    ${TestLink}

Verify Add Remove Elements Page
    AddRemove.AddRemove Page loaded

Add Elements
    [Arguments]    ${times}
    AddRemove.Add Elements  ${times}

Delete Elements
    AddRemove.Delete Elements

Count Elements Added
    [Arguments]    ${Expected}
    AddRemove.Count Elements    ${Expected}

Basic Auth
    [Arguments]    ${username}    ${password}    ${StatusExpected}
    BasicAuth.Login to the BasicAuth    ${username}    ${password}  ${StatusExpected}

Verify Broken Images Page
    BrokenImages.BrokenImages Page loaded

Validate Broken Images
    BrokenImages.Validate Broken Images

Validate Functional Images
    BrokenImages.Validate Functional Images

Verify Checkboxes Page
    Checkboxes.Checkboxes Page loaded

Validate Checkboxes Are Tick
    [Arguments]    ${index}
    Checkboxes.Validate Checkboxes are Checked  ${index}

Tick Checkboxes
    [Arguments]    ${CheckboxToTick}
    log    ${CheckboxToTick}
    Checkboxes.Tick box     ${CheckboxToTick}