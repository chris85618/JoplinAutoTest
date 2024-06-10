*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Delete Node And Todo
   [Setup]    Open Test Application
   [Teardown]    Close Application
   Create Note And Todo    note    todo
   Long Press Title    note
   Click Delete Button
   Assert Title Not On List    note
   Long Press Title    todo
   Click Delete Button
   Assert Title Not On List    todo
