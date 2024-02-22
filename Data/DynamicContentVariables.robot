*** Settings ***
Resource    Variables.robot

*** Variables ***

#DynamicContent
${DynamicContentTitle}=         Dynamic Content
${DynamicContentImages}=        xpath=//*[@id="content"]//img
@{CharList}
