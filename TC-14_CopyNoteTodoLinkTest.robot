*** Settings ***
Library      AppiumLibrary
Resource    Keywords.resource
#Test Setup    Open Test Application
#Test Teardown    Close Application


*** Test Cases ***
Copy Todo Link Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Todo    source
    And Add Note    target
    And Open Todo    source
    When Copy Markdown Link
    ${clipboard_text}=    Get Clipboard
    And Back To Home Page
    And Open Note    target
    And Enter Edit Mode
    And Input Description    ${clipboard_text}
    And Exit Edit Mode
    Sleep    5s
    And Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[@resource-id="rendered-md"]/android.view.View/android.view.View[@content-desc="source"]/android.widget.TextView[@text="source"]
    And Assert Title    source
    And Back To Home Page

Copy Note Link Test
    Given Application is opened
    [Teardown]    Close Application
    And Add Note    source
    And Add Todo    target
    And Open Note    source
    When Copy Markdown Link
    ${clipboard_text}=    Get Clipboard
    And Back To Home Page
    And Open Note    target
    And Enter Edit Mode
    And Input Description    ${clipboard_text}
    And Exit Edit Mode
    Sleep    5s
    And Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View[@resource-id="rendered-md"]/android.view.View/android.view.View[@content-desc="source"]/android.widget.TextView[@text="source"]
    And Assert Title    source
    And Back To Home Page
