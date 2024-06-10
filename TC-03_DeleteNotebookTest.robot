*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Delete Notebook Test
   Given Application is opened
   [Teardown]    Close Application
   And Add New Notebook With Parent Notebook    children notebook    Welcome\!
   And Add Note    new note
   And Add Todo    new todo
   When Click On The Main Hamburger Menu
   And Long Press    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
   And Click Delete
   Then Page Should Not Contain Element    children notebook
   And Page Should Not Contain Element    Welcome\!
   And Back to Home Page from Slide Menu
   And Show All Notes
   And Page Should Not Contain Element    new todo
   And Page Should Not Contain Element    new note
