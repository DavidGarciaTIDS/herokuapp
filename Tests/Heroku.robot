*** Settings ***
Documentation    This is a test suite for the Herokuapp
Library    SeleniumLibrary
Resource      ../Data/Variables.robot
Resource    ../resources/Common.robot
Resource    ../resources/Herokuapp.robot

Test Setup    Start Web Test
Test Teardown    End Web Test

#command to run the test
#robot -d results Tests\Heroku.robot

*** Test Cases ***
Add Remove Elements Page
    [Documentation]     This test Adds a new item
    [Tags]              1001    AddRemove  Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${AddRemoveElements}
    Herokuapp.Verify Add Remove Elements Page
    Herokuapp.Add Elements  ${NumberOfElements}
    Herokuapp.Count Elements Added  ${NumberOfElements}
    Herokuapp.Delete Elements
    Herokuapp.Count Elements Added  0

Broken Images
    [Documentation]     This test verifies the broken images
    [Tags]              1002    BrokenImages   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BrokenImages}
    Herokuapp.Verify Broken Images Page
    Herokuapp.Validate Broken Images
    Herokuapp.Validate Functional Images

Basic Good Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003a   BasicAuth    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BasicAuth}
    Herokuapp.Basic Auth  ${BAUsername}  ${BAPassword}  200

Basic Bad Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003b   BasicAuth    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BasicAuth}
    Herokuapp.Basic Auth  ${BAUsernameBAD}  ${BAPasswordBAD}    401

Checkboxes Page
    [Documentation]     This test verifies the checkboxes
    [Tags]              1004    Checkboxes   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link      ${Checkboxes}
    Herokuapp.Verify Checkboxes Page
    Herokuapp.Tick Checkboxes       1
    Herokuapp.Validate Checkboxes Are Tick  1
    Herokuapp.Tick Checkboxes       2
    Herokuapp.Validate Checkboxes Are Tick  2

Context Menu Page
    [Documentation]     This test verifies the context menu
    [Tags]              1005    ContextMenu   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link      ${ContextMenu}
    Herokuapp.Verify Context Menu Page
    Herokuapp.Right Click Context Menu
    Herokuapp.Validate Context Menu Alert
    Herokuapp.Validate Context Menu Alert Dismiss

Dissaapearing Elements Page
    [Documentation]     This test verifies the disappearing elements
    [Tags]              1006    DisappearingElements   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link      ${DisappearingElements}
    Herokuapp.Verify Disappearing Elements Page
    Herokuapp.Validate Gallery Button Exists
    Herokuapp.Validate Gallery Button Does Not Exists

Drag and Drop
    [Documentation]     This test verifies the drag and drop
    [Tags]              1007    DragAndDrop   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link              ${DragAndDrop}
    Herokuapp.Verify Drag And Drop Page
    Herokuapp.Drag And Drop Then Verify     ${DragAndDropA}  ${DragAndDropB}
    Herokuapp.Drag And Drop Then Verify     ${DragAndDropB}  ${DragAndDropA}

Dynamic Content
    [Documentation]     This test verifies the dynamic content
    [Tags]              1008    DynamicContent   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link              ${DynamicContent}
    Herokuapp.Verify Dynamic Content Page
    Herokuapp.Validate Dynamic Content