*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
List Empty Notebook Test
   Given Application is opened
   [Teardown]    Close Application
   And Delete Notebook    Welcome\!
   And Add New Notebook    0
   When Show All Notes
   Then Assert No Any Note and Todo

List One Notebook Test
   Given Application is opened
   [Teardown]    Close Application
   And Delete Notebook    Welcome\!
   And Add New Notebook    0
   And Add Note    Single Note
   When Show All Notes
   Then Assert Note Or Todo Existed
