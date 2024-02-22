*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             String
Library            ../../Libraries/CustomLibrary.py
Resource            ../../Data/FileUploadVariables.robot


*** Keywords ***
Upload File
    [Arguments]     ${FilePath}
    Create File     ${FilePath}  testing
    Sleep           1s
    Choose File     ${FileUploadInput}    ${FilePath}
    Sleep           2s
    Click Button    ${FileUploadButton}
    Sleep           2s
    Remove File    ${FilePath}
    wait until page contains    ${FileUploadedTitle}