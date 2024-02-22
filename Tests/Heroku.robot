*** Settings ***
Documentation       This is a test suite for the Herokuapp
Library             SeleniumLibrary
Resource            ../Data/Variables.robot
Resource            ../resources/Common.robot
Resource            ../resources/Herokuapp.robot

Test Setup    Start Web Test
Test Teardown    End Web Test

#command to run the test
#robot -d results Tests\Heroku.robot

*** Test Cases ***
Add Remove Elements Page
    [Documentation]     This test Adds a new item
    [Tags]              1001    AddRemove  Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${AddRemoveElements}
    Common.Validate Page loaded             ${AddRemovePage}
    Herokuapp.Add Elements                  ${NumberOfElements}
    Herokuapp.Count Elements Added          ${NumberOfElements}
    Herokuapp.Delete Elements
    Herokuapp.Count Elements Added  0

Broken Images
    [Documentation]     This test verifies the broken images
    [Tags]              1002    BrokenImages   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link  ${BrokenImages}
    Common.Validate Page loaded             ${BrokenImagesTitle}
    Herokuapp.Validate Broken Images
    Herokuapp.Validate Functional Images

Basic Good Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003a   BasicAuth    Functional
    Common.Validate Page loaded             ${LandingPageTitle}
    Herokuapp.Select Test Link              ${BasicAuth}
    Herokuapp.Basic Auth                    ${BAUsername}  ${BAPassword}  200

Basic Bad Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003b   BasicAuth    Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${BasicAuth}
    Herokuapp.Basic Auth  ${BAUsernameBAD}  ${BAPasswordBAD}    401

Checkboxes Page
    [Documentation]     This test verifies the checkboxes
    [Tags]              1004    Checkboxes   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${Checkboxes}
    Common.Validate Page loaded             ${CheckboxesTitle}
    Herokuapp.Tick Checkboxes               1
    Herokuapp.Validate Checkboxes Are Tick  1
    Herokuapp.Tick Checkboxes               2
    Herokuapp.Validate Checkboxes Are Tick  2

Context Menu Page
    [Documentation]     This test verifies the context menu
    [Tags]              1005    ContextMenu   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${ContextMenu}
    Common.Validate Page loaded             ${ContextMenuTitle}
    Herokuapp.Right Click Context Menu
    Herokuapp.Validate Context Menu Alert
    Herokuapp.Validate Context Menu Alert Dismiss

Dissaapearing Elements Page
    [Documentation]     This test verifies the disappearing elements
    [Tags]              1006    DisappearingElements   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${DisappearingElements}
    Common.Validate Page loaded             ${DisappearingElementsTitle}
    Herokuapp.Validate Gallery Button Exists
    Herokuapp.Validate Gallery Button Does Not Exists

Drag and Drop
    [Documentation]     This test verifies the drag and drop
    [Tags]              1007    DragAndDrop   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${DragAndDrop}
    Common.Validate Page loaded             ${DragAndDropTitle}
    Herokuapp.Drag And Drop Then Verify     ${DragAndDropA}  ${DragAndDropB}
    Herokuapp.Drag And Drop Then Verify     ${DragAndDropB}  ${DragAndDropA}

Dynamic Content
    [Documentation]     This test verifies the dynamic content
    [Tags]              1008    DynamicContent   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${DynamicContent}
    Common.Validate Page loaded             ${DynamicContentTitle}
    Herokuapp.Validate Dynamic Content

Dynamic Controls
    [Documentation]     This test verifies the dynamic controls
    [Tags]              1009    DynamicControls   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${DynamicControls}
    Common.Validate Page loaded             ${DynamicControlsTitle}
    Herokuapp.Remove Checkbox
    Herokuapp.Enable Input

Exit Intent
    [Documentation]     This test verifies the exit intent
    [Tags]              1010    ExitIntent   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${ExitIntent}
    Common.Validate Page loaded             ${ExitIntentTitle}
    Herokuapp.Validate Exit Intent

File Download
    [Documentation]     This test verifies the file download
    [Tags]              1011    FileDownload   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${FileDownload}
    Common.Validate Page loaded             ${FileDownloadTitle}
    Herokuapp.Download File

File Upload
    [Documentation]     This test verifies the file upload
    [Tags]              1012    FileUpload   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${FileUpload}
    Common.Validate Page loaded             ${FileUploadTitle}
    Herokuapp.Upload File                   ${FileUploadPath}

Floating Menu
    [Documentation]     This test verifies the floating menu
    [Tags]              1013    FloatingMenu   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${FloatingMenu}
    Common.Validate Page loaded             ${FloatingMenuTitle}
    Herokuapp.Scroll To Bottom
    Herokuapp.Validate Floating Menu

Form Authentication
    [Documentation]     This test verifies the form authentication
    [Tags]              1014    FormAuthentication   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${FormAuthentication}
    Common.Validate Page loaded             ${FormAuthenticationTitle}
    Herokuapp.Login Form Authentication      ${FAUsername}  ${FAPassword}
    Herokuapp.Validate Form Authentication      True        True
    Common.Validate Page loaded             ${FormAuthenticationTitle}
    Herokuapp.Login Form Authentication      ${BADFAUsername}  ${FAPassword}
    Herokuapp.Validate Form Authentication      False        True
    Common.Validate Page loaded             ${FormAuthenticationTitle}
    Herokuapp.Login Form Authentication      ${FAUsername}  ${BADFAPassword}
    Herokuapp.Validate Form Authentication      True        False

Horizontal Slider
    [Documentation]     This test verifies the horizontal slider
    [Tags]              1015    HorizontalSlider   Functional
    Common.Validate Page loaded            ${LandingPageTitle}
    Herokuapp.Select Test Link              ${HorizontalSlider}
    Common.Validate Page loaded             ${HorizontalSliderTitle}
    Herokuapp.Slide Horizontal Slider        ${SliderValue}
    Herokuapp.Validate Horizontal Slider      ${SliderValue}

JQuery UI Menus
    [Documentation]     This test verifies the JQuery UI Menus
    [Tags]              1016    JQueryUIMenus   Functional
    Common.Validate Page loaded             ${LandingPageTitle}
    Herokuapp.Select Test Link              ${JQueryUIMenus}
    Common.Validate Page loaded             ${JQueryUIMenusTitle}
    Herokuapp.Select JQuery UI Menus
    Herokuapp.Validate Excel File

Javascript Alerts
    [Documentation]     This test verifies the Javascript Alerts
    [Tags]              1017    JavascriptAlerts   Functional
    Common.Validate Page loaded             ${LandingPageTitle}
    Herokuapp.Select Test Link              ${JavascriptAlerts}
    Common.Validate Page loaded             ${JavascriptAlertsTitle}
    Herokuapp.Validate Javascript Alerts

Key Press
    [Documentation]     This test verifies the Key Presses
    [Tags]              1018    KeyPress   Functional
    Common.Validate Page loaded             ${LandingPageTitle}
    Herokuapp.Select Test Link              ${KeyPresses}
    Common.Validate Page loaded             ${KeyPressesTitle}
    Herokuapp.Press Key                     SPACE
    Herokuapp.Validate Key Presses          SPACE
    Herokuapp.Press Key                     ESCAPE
    Herokuapp.Validate Key Presses          ESCAPE

Multiple Windows
    [Documentation]     This test verifies the Multiple Windows
    [Tags]              1019    MultipleWindows   Functional
    Common.Validate Page loaded             ${LandingPageTitle}
    Herokuapp.Select Test Link              ${MultipleWindows}
    Common.Validate Page loaded             ${MultipleWindowsTitle}
    Herokuapp.Open New Window
    Common.Validate Page loaded             ${NewWindowTitle}