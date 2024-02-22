*** Settings ***
Resource    Variables.robot

*** Variables ***

#HorizontalSlider
${HorizontalSliderTitle}=       Horizontal Slider
${Slider}=                      xpath=//*[@id="content"]//input
${SliderDisplay}=               xpath=//*[@id="content"]//span
${SliderValue}=                 3.5
