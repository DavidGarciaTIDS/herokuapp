*** Settings ***
Resource    Variables.robot

*** Variables ***

#FileUpload
${FileUploadTitle}=             File Uploader
${FileUploadPath}=              C:\\Users\\degarcia\\Downloads\\test.txt
${FileUploadInput}=             xpath=//*[@id="file-upload"]
${FileUploadButton}=            xpath=//*[@id="file-submit"]
${FileUploadedTitle}=           File Uploaded!
