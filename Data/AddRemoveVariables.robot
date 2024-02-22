*** Settings ***
Resource    Variables.robot
*** Variables ***
##AddRemoveElements
${AddRemovePage}=               Add/Remove Elements
${NumberOfElements}=            20
${AddedElements}=               xpath=//*[@id="content"]/div/button
${DeleteElements}=              xpath=//*[@id="elements"]/button
${AddElementButton}=            xpath=//*[@id="content"]/div/button
