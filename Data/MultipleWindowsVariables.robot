*** Settings ***
Resource    Variables.robot

*** Variables ***

#MultipleWindows
${MultipleWindowsTitle}=        Opening a new window
${NewWindowLink}=               xpath=//*[@id="content"]/div/a
${NewWindowTitle}=              New Window
