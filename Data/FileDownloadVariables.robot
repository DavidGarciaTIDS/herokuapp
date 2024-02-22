*** Settings ***
Resource    Variables.robot

*** Variables ***

#FileDownload
${FileDownloadTitle}=           File Downloader
${FileDownloadLinks}=           xpath=//*[@id="content"]//a
${DownloadPath}=                C:\\Users\\degarcia\\Downloads\\
