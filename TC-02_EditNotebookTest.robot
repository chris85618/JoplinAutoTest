*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Edit Notebook Test
    Given Application is opened
    [Teardown]    Close Application
    When Edit Notebook With New Title    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView    0

Edit Notebook Test With Duplicated Notebook
    Given Application is opened
    [Teardown]    Close Application
    And Add New Notebook    0
    When Edit Notebook With New Title    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView    0
    Then Assert Duplicated Notebooks Title    0

Fail to Edit Notebook Because Empty Title Test
    Given Application is opened
    [Teardown]    Close Application
    When Click On The Main Hamburger Menu
    And Long Press    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
    And Click Edit Button
    And Input The New Notebook Title    ${EMPTY}
    Then Save Changes Should Be Disabled
