*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Convert Note to Todo Test
    Given Application is opened
    [Teardown]    Close Application
    And Open Note    1. Welcome to Joplin\!
    When Convert Note To Todo
    Then Assert Checkbox Existed

Convert Todo to Note Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Todo    origin todo
    And Open Todo    origin todo
    When Convert Todo To Note
    Then Assert Checkbox Not Existed
