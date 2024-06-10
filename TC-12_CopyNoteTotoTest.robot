*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Copy Note And Todo Test
   [Template]    Copy Note And Todo
   note    todo
   ${SPACE}    ${SPACE}
