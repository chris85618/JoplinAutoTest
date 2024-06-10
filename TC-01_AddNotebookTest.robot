*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Add New Notebook Test
    Given Application is opened
    [Teardown]    Close Application
    When Add New Notebook    0

Add Duplicated New Notebook Test
    Given Application is opened
    [Teardown]    Close Application
    When Add New Notebook    0
    And Add New Notebook    0
    Then Assert Duplicated Notebooks Title    0

Add New Notebook With Parent Notebook Test
    Given Application is opened
    [Teardown]    Close Application
    When Add New Notebook With Parent Notebook    New    Welcome\!

Fail to Add New Notebook Because Empty Title Test
    Given Application is opened
    [Teardown]    Close Application
    When Click On The Main Hamburger Menu
    And Click On The New Notebook
    Then Save Changes Should Be Disabled
