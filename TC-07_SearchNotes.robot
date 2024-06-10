*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Search Empty Test
   Given Application is opened
   [Teardown]    Close Application
   When Search    ${EMPTY}
   Then Page Should Not Contain Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup

Search Test
   Given Application is opened
   [Teardown]    Close Application
   And Add Note    0123456789
   And Add Todo    0. Aloha
   And Add Note    6. 0knowledge
   When Search    0
   Then Assert Search Result    0123456789
   And Assert Search Result    0. Aloha
   And Assert Search Result    6. 0knowledge
