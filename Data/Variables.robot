*** Variables ***
${BROWSER}=                     chrome
${URL}=                         https://the-internet.herokuapp.com/

#Landing
${LandingPageTitle}=            Welcome to the-internet

#Test
${AddRemoveElements}=           xpath=//*[@id="content"]/ul/li[2]/a
${BrokenImages}=                xpath=//*[@id="content"]/ul/li[4]/a
${BasicAuth}=                   xpath=//*[@id="content"]/ul/li[3]/a
${Checkboxes}=                  xpath=//*[@id="content"]/ul/li[6]/a
${ContextMenu}=                 xpath=//*[@id="content"]/ul/li[7]/a
${DisappearingElements}=        xpath=//*[@id="content"]/ul/li[9]/a
${DragAndDrop}=                 xpath=//*[@id="content"]/ul/li[10]/a
${DynamicContent}=              xpath=//*[@id="content"]/ul/li[12]/a
${DynamicControls}=             xpath=//*[@id="content"]/ul/li[13]/a
${ExitIntent}=                  xpath=//*[@id="content"]/ul/li[16]/a
${FileDownload}=                xpath=//*[@id="content"]/ul/li[17]/a
${FileUpload}=                  xpath=//*[@id="content"]/ul/li[18]/a
${FloatingMenu}=                xpath=//*[@id="content"]/ul/li[19]/a
${FormAuthentication}=          xpath=//*[@id="content"]/ul/li[21]/a
${HorizontalSlider}=            xpath=//*[@id="content"]/ul/li[24]/a
${JQueryUIMenus}=               xpath=//*[@id="content"]/ul/li[28]/a
${JavaScriptAlerts}=            xpath=//*[@id="content"]/ul/li[29]/a
${KeyPresses}=                  xpath=//*[@id="content"]/ul/li[31]/a
${MultipleWindows}=             xpath=//*[@id="content"]/ul/li[33]/a
