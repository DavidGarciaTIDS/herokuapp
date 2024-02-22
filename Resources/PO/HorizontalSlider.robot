*** Settings ***
Documentation           A test suite with a single test for validating a sliders value.
Library                 SeleniumLibrary
Resource                ../../Data/HorizontalSliderVariables.robot

*** Keywords ***

Slide Horizontal Slider
    [Arguments]    ${SliderValue}
    sleep    1s
    Click Element At Coordinates    ${slider}   20    0
    sleep    2s


Validate Horizontal Sliders Value
    [Arguments]    ${Expected}
    ${value}=    SeleniumLibrary.Get Text    ${SliderDisplay}
    should be equal    ${value}    ${Expected}
    ${value}=    SeleniumLibrary.Get Value    ${Slider}
    should be equal    ${value}    ${Expected}
