*** Settings ***
Documentation       A test suite with a single test for Navigating through windows.
Library             SeleniumLibrary
Resource            ../../Data/MultipleWindowsVariables.robot

*** Keywords ***

Click on Link For New Window
    Click Link      ${NewWindowLink}
    switch window   NEW
