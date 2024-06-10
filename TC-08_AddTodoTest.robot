*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Add New Todo Test
   [Template]    Add New Todo
   0
   ${SPACE}
   中文
   _-*($)?@
   aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

Fail to Add Todo Test
  Given Application is opened
  And Add New Notebook    test
  [Teardown]    Close Application
  When Click On The Red Cross
  And Click On The New Todo
  And Input Title    ${EMPTY}
  And Exit Edit Mode
  Then Page Should Not Contain Element    //android.widget.Button[@content-desc="Back"]
  And Assert No Any Note and Todo
