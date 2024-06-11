*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Add Tag Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Todo    test
    And Open Todo    test
    Then Add Tag for Note Todo    test

Remove Existed Tag And Add Another New Tag Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Todo    test
    And Open Todo    test
    Then Add Tag for Note Todo    test
    