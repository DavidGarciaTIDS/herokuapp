*** Settings ***
Resource    Variables.robot

*** Variables ***

#BrokenImages
${BrokenImagesTitle}=           Broken Images
${BrokenImageContainer}=        xpath=//*[@id="content"]/div
${broken}=                      0
${functional}=                  0