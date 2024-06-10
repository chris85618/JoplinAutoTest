*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
List Empty Notebook Test
   Given Application is opened
   [Teardown]    Close Application
   And Add New Notebook    test
   Then Assert No Any Note and Todo

List One Notebook Test
   Given Application is opened
   [Teardown]    Close Application
   And Add New Notebook    test
   And Add Note    Single Note
   Then Assert Note Or Todo Existed
