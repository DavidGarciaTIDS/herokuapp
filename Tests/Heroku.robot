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
Verify Add Remove Elements Page
    [Documentation]     This test Adds a new item
    [Tags]              1001    AddRemove  Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${AddRemoveElements}
    Herokuapp.Verify Add Remove Elements Page
    Herokuapp.Add Elements  ${NumberOfElements}
    Herokuapp.Count Elements Added  ${NumberOfElements}
    Herokuapp.Delete Elements
    Herokuapp.Count Elements Added  0

Verify Broken Images
    [Documentation]     This test verifies the broken images
    [Tags]              1002    BrokenImages   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BrokenImages}
    Herokuapp.Verify Broken Images Page
    Herokuapp.Validate Broken Images
    Herokuapp.Validate Functional Images

Verify Basic Good Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003a   BasicAuth    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BasicAuth}
    Herokuapp.Basic Auth  ${BAUsername}  ${BAPassword}  200

Verify Basic Bad Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003b   BasicAuth    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BasicAuth}
    Herokuapp.Basic Auth  ${BAUsernameBAD}  ${BAPasswordBAD}    401

Verify Checkboxes Page
    [Documentation]     This test verifies the checkboxes
    [Tags]              1004    Checkboxes   Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link      ${Checkboxes}
    Herokuapp.Verify Checkboxes Page
    Herokuapp.Tick Checkboxes       1
    Herokuapp.Validate Checkboxes Are Tick  1
    Herokuapp.Tick Checkboxes       2
    Herokuapp.Validate Checkboxes Are Tick  2
