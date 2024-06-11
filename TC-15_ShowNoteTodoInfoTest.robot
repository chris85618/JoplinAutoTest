*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Show Note Properties Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Note    test
    And Open Note    test
    When Open Properties
    Then Element Should Contain Text    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView    Created
    And Element Should Contain Text    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView    Updated
    # TODO: Drop permission for no GeoLocation info
    # And Click View On Map
    # And Assert No GeoLocation Info

Show Todo Properties Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Todo    test
    And Open Todo    test
    When Open Properties
    Then Element Should Contain Text    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView    Created
    And Element Should Contain Text    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView    Updated
    # TODO: Drop permission for no GeoLocation info
    # And Click View On Map
    # And Assert No GeoLocation Info
