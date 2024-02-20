*** Settings ***
Resource            ../Resources/Common.robot
Resource            ../Resources/PO/AddRemove.robot
Resource            ../Resources/PO/Landing.robot
Resource            ../Resources/PO/BasicAuth.robot
Resource            ../Resources/PO/BrokenImages.robot
Resource            ../Resources/PO/Checkboxes.robot
Resource            ../Resources/PO/ContextMenu.robot
Resource            ../Resources/PO/DisappearingElements.robot
Resource            ../Resources/PO/DragAndDrop.robot
Resource            ../Resources/PO/DynamicContent.robot
Resource            ../Resources/PO/DynamicControls.robot
Resource            ../Resources/PO/ExitIntent.robot
Resource            ../Resources/PO/FileDownload.robot
Resource            ../Resources/PO/FileUpload.robot
Resource            ../Resources/PO/FloatingMenu.robot
Resource            ../Resources/PO/FormAuthentication.robot
Resource            ../Resources/PO/HorizontalSlider.robot
Resource            ../Resources/PO/JQueryUIMenus.robot
Resource            ../Resources/PO/JavascriptAlerts.robot
Resource            ../Resources/PO/PressKeys.robot
Resource            ../Resources/PO/MultipleWindows.robot

*** Keywords ***

Select Test Link
    [Arguments]    ${TestLink}
    Landing.Select Test Link    ${TestLink}

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

Validate Broken Images
    BrokenImages.Validate Broken Images

Validate Functional Images
    BrokenImages.Validate Functional Images

Validate Checkboxes Are Tick
    [Arguments]    ${index}
    Checkboxes.Validate Checkboxes are Checked  ${index}

Tick Checkboxes
    [Arguments]    ${CheckboxToTick}
    log    ${CheckboxToTick}
    Checkboxes.Tick box     ${CheckboxToTick}

Right Click Context Menu
    ContextMenu.Right Click Context Menu

Validate Context Menu Alert
    ContextMenu.Validate Alert

Validate Context Menu Alert Dismiss
    ContextMenu.Verify Alert is Gone

Validate Gallery Button Exists
    DisappearingElements.Refresh Until Visibile

Validate Gallery Button Does Not Exists
    DisappearingElements.Refresh Until Not Visibile

Drag And Drop Then Verify
    [Arguments]    ${From}   ${To}
    ${ColmnB}   Get Text    ${From}//header
    ${ColmnA}   Get Text    ${To}//header
    DragAndDrop.Drag And Drop A to B   ${From}   ${To}
    DragAndDrop.Validate Drag And Drop    ${From}   ${To}   ${ColmnA}   ${ColmnB}

Validate Dynamic Content
    DynamicContent.Validate Dynamic Content

Remove Checkbox
    DynamicControls.Remove Checkbox by button

Enable Input
    DynamicControls.Enable Input by button

Validate Exit Intent
    ExitIntent.Validate Exit Intent

Verify File Download Page
    FileDownload.File Download Page loaded

Download File
    FileDownload.Download File

Upload File
    [Arguments]    ${FilePath}
    FileUpload.Upload File    ${FilePath}

Scroll To Bottom
    FloatingMenu.Scroll To Bottom

Validate Floating Menu
    FloatingMenu.Validate Floating Menu

Login Form Authentication
    [Arguments]    ${username}    ${password}
    FormAuthentication.Login to the Form Authentication    ${username}    ${password}

Validate Form Authentication
    [Arguments]    ${FAExpected1}    ${FAExpected2}
    FormAuthentication.Validate Form Authentication     ${FAExpected1}    ${FAExpected2}

Slide Horizontal Slider
    [Arguments]    ${SliderValue}
    HorizontalSlider.Slide Horizontal Slider    ${SliderValue}

Validate Horizontal Slider
    [Arguments]    ${Expected}
    HorizontalSlider.Validate Horizontal Sliders Value      ${Expected}

Select JQuery UI Menus
    JQueryUIMenus.Navigate path     @{JQueryPath}

Validate Excel File
    FileDownload.Validate Downloaded File    https://the-internet.herokuapp.com/download/jqueryui/menu/menu.xls

Validate Javascript Alerts
    JavascriptAlerts.Simple Alert
    JavascriptAlerts.Confirm Alert      DISMISS
    JavascriptAlerts.Prompt Alert       ${JSAlertText}    ACCEPT

Press Key
    [Arguments]    ${KeyPress}
    PressKeys.Press Key on Element    ${KeyPress}   ${KeyPressesInput}

Validate Key Presses
    [Arguments]    ${KeyPressed}
    PressKeys.Validate Key Pressed    ${KeyOutput}    ${KeyPressed}

Open New Window
    MultipleWindows.Click on Link For New Window