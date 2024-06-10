*** Settings ***
Library      AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    uiautomator2
${ANDROID_APP}                 ${CURDIR}/app/net.cozic.joplin_2.14.9-2097739_minAPI21(arm64-v8a,armeabi-v7a,x86,x86_64)(nodpi)_apkmirror.com.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   14
${ANDROID_DEVICE_NAME}        emulator-5554

*** Keywords ***
Open Test Application
    Open Application    http://127.0.0.1:4723    platformName=${ANDROID_PLATFORM_NAME}
  ...  automationName=${ANDROID_AUTOMATION_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}    deviceName=${ANDROID_DEVICE_NAME}   
  ...  autoGrantPermissions=true
    Set Appium Timeout    20


Application is opened
    Open Test Application


Click On The Red Cross
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Add new, collapsed"]
    Click Element    //android.widget.Button[@content-desc="Add new, collapsed"]


Click On Sort Notes By Button
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Sort notes by"]/android.view.ViewGroup/android.widget.TextView
    Click Element    //android.widget.Button[@content-desc="Sort notes by"]/android.view.ViewGroup/android.widget.TextView

Click Sort by Updated date
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.TextView


Click Sort by Created date
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[3]/android.widget.TextView


Click Sort by Title
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[5]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[5]/android.widget.TextView


Click Sort by Custom order
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[7]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[7]/android.widget.TextView


Click Reverse Sort Order
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[9]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[9]/android.widget.TextView


Click Uncompleted to-dos on top
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[11]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[11]/android.widget.TextView


Click Show completed to-dos
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[13]/android.widget.TextView
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[13]/android.widget.TextView

Click Todo Button
    [Arguments]    ${title}
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${title}"]/../android.widget.CheckBox
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${title}"]/../android.widget.CheckBox

Click On The New Note
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="New note"]
    Click Element    //android.widget.Button[@content-desc="New note"]

Click On The New Todo
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="New to-do"]
    Click Element    //android.widget.Button[@content-desc="New to-do"]

Input Title
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.EditText
    [Arguments]    ${title}
    Input Text    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.EditText    ${title}

Exit Edit Mode
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Back"]/android.view.ViewGroup
    Click Element    xpath=//android.widget.Button[@content-desc="Back"]/android.view.ViewGroup

Enter Edit Mode
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Edit, collapsed"]
    Click Element    //android.widget.Button[@content-desc="Edit, collapsed"]

Back To Home Page
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Back"]/android.view.ViewGroup
    Click Element    xpath=//android.widget.Button[@content-desc="Back"]/android.view.ViewGroup

Assert Title On List
    [Arguments]    ${text}
    Wait Until Element Is Visible    //android.widget.TextView[@text="${text}"]    10000
    Page Should Contain Text    ${text}

Assert Title Not On List
    [Arguments]    ${text}
    Page Should Contain Text    ${text}

Back to Home Page from Sidebar
    Click Element    //android.widget.Button[@content-desc="Sidebar"]

Show All Notes
    Click On The Sidebar
    Wait Until Element Is Visible    xpath=(//android.widget.TextView[@text="All notes"])
    Click Element    xpath=(//android.widget.TextView[@text="All notes"])

Search
    [Arguments]    ${target}
    Click On The Search Button
    Input Search Text    ${target}
    Press Keycode    66

Click On The Search Button
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Search"]
    Click Element    //android.widget.Button[@content-desc="Search"]

Input Search Text
    [Arguments]    ${search_text}
    Wait Until Element Is Visible    //android.widget.EditText
    Input Text    //android.widget.EditText    ${search_text}

Assert Search Result
    [Arguments]    ${title}
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${title}"]
    Page Should Contain Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${title}"]

Click On The Sidebar
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Sidebar"]
    Click Element    //android.widget.Button[@content-desc="Sidebar"]

Click On The Main Sidebar
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView[1]
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView[1]

Click On The New Notebook
    Wait Until Element Is Visible    //android.widget.TextView[@text="New Notebook"]
    Click Element    //android.widget.TextView[@text="New Notebook"]

Input The New Notebook Title
    [Arguments]    ${notebook_title}
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText
    Input Text    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText    ${notebook_title}


Save Changes Should Be Disabled
    Element Should Be Disabled    //android.widget.Button[@content-desc="Save changes"]


Click On Save Changes
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Save changes"]
    Click Element    //android.widget.Button[@content-desc="Save changes"]

Click On Select Parent Notebook
    [Arguments]    ${target_parent_notebook}
    # Click on select parent notebook
    Wait Until Element Is Visible    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup
    Click Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup
    # Click target= parent notebook
    Wait Until Element Is Visible    //android.widget.TextView[@text="${target_parent_notebook}"]
    Click Element    //android.widget.TextView[@text="${target_parent_notebook}"]

Click On The Actions Menu
    Wait Until Element Is Visible    //android.view.ViewGroup[@content-desc="Actions"]
    Click Element    //android.view.ViewGroup[@content-desc="Actions"]

Open Note
    [Arguments]    ${note_title}
    Wait Until Element Is Visible    //android.widget.TextView[@text="${note_title}"]
    Click Element    //android.widget.TextView[@text="${note_title}"]
    
Open Todo
    [Arguments]    ${todo_title}
    Wait Until Element Is Visible    //android.widget.TextView[@text="${todo_title}"]
    Click Element    //android.widget.TextView[@text="${todo_title}"]

Long Press
    [Arguments]    ${xpath}
    Wait Until Element Is Visible    ${xpath}
    My Long Press    ${xpath}

Long Press Title
    [Arguments]    ${title}
    Long Press    //android.widget.TextView[@text="${title}"]

Click Delete Button
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Delete"]
    Click Element    //android.widget.Button[@content-desc="Delete"]
    Wait Until Element Is Visible    //android.widget.TextView[@text="OK"]
    Click Element    //android.widget.TextView[@text="OK"]

Click Copy Button
    Wait Until Element Is Visible    //android.widget.Button[@content-desc="Duplicate"]
    Click Element    //android.widget.Button[@content-desc="Duplicate"]

My Long Press
    [Arguments]    ${locator}    ${duration}=2000
    wait until element is visible    ${locator}
    ${element_location}=    get element rect    ${locator}
    ${x}=    evaluate    ${element_location}[x]+(${element_location}[width]//2)
    ${y}=    evaluate    ${element_location}[y]+(${element_location}[height]//2)
    ${tap_positions}=    create list    ${x}    ${y}
    Tap With Positions    ${duration}    ${tap_positions}

Add Note
    [Arguments]    ${title}
    Click On The Red Cross
    Click On The New Note
    Input Title    ${title}
    Exit Edit Mode
    Page Should Contain Text    ${title}
    Back To Home Page

Add Todo
    [Arguments]    ${title}
    Click On The Red Cross
    Click On The New Todo
    Input Title    ${title}
    Exit Edit Mode
    Page Should Contain Text    ${title}
    Back To Home Page

# Notebook
Assert Duplicated Notebooks Title
    [Arguments]    ${notebook_title}
    Then Click On The Sidebar
    Page Should Contain Text    ${notebook_title}    limit=2

## New Notebook

Add New Notebook
    [Arguments]    ${notebook_title}
    Click On The Main Sidebar
    Click On The New Notebook
    Input The New Notebook Title    ${notebook_title}
    Click On Save Changes
    Page Should Contain Text    ${notebook_title}


Add New Notebook With Parent Notebook
    [Arguments]    ${notebook_title}    ${target_parent_notebook}
    Click On The Main Sidebar
    Click On The New Notebook
    Input The New Notebook Title    ${notebook_title}
    Click On Select Parent Notebook    ${target_parent_notebook}
    Click On Save Changes
    Page Should Contain Text    ${notebook_title}

## Edit Notebook

Click Edit Button
    Wait Until Element Is Visible    //android.widget.Button[@text="EDIT"]
    Click Element    //android.widget.Button[@text="EDIT"]


Edit Notebook With New Title
    [Arguments]    ${origin_notebook_xpath}    ${new_notebook_title}
    Click On The Main Sidebar
    Then Long Press    ${origin_notebook_xpath}
    Click Edit Button
    Input The New Notebook Title    ${new_notebook_title}
    Click On Save Changes
    Page Should Contain Text    ${new_notebook_title}

## Delete Notebook

Delete Notebook
    [Arguments]    ${notebook_title}
    Click On The Main Sidebar
    And Long Press    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${notebook_title}"]
    Click Delete
    Sleep    1s
    Page Should Not Contain Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text="${notebook_title}"]
    Back to Home Page from Sidebar

Click Delete
    Wait Until Element Is Visible    //android.widget.Button[@text="DELETE"]
    Click Element    //android.widget.Button[@text="DELETE"]
    Wait Until Element Is Visible    //android.widget.Button[@text="OK"]
    Click Element    //android.widget.Button[@text="OK"]


Assert No Any Note and Todo
    Page Should Contain Text    There are currently no notes. Create one by clicking on the \(+\) button.

Assert Note Or Todo Existed
    Page Should Contain Element    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup

Create Note And Todo
    [Arguments]    ${note_title}    ${todo_title}
    Add Note    ${note_title}
    Add Todo    ${todo_title}
    Assert Title On List    ${todo_title}
    Assert Title On List    ${note_title}
    Show All Notes

Add New Note
    [Arguments]    ${title}
    [Setup]    Open Test Application
    [Teardown]    Close Application
    Add Note    ${title}
    Assert Title On List    ${title}

Add New Todo
    [Arguments]    ${title}
    [Setup]    Open Test Application
    [Teardown]    Close Application
    Add Todo    ${title}
    Assert Title On List    ${title}

Edit Note And Todo
    [Arguments]    ${note_title}    ${todo_title}
    [Setup]    Open Test Application
    [Teardown]    Close Application
    Create Note And Todo    note    todo
    Open Note    note
    Enter Edit Mode
    Input Title    ${note_title}
    Exit Edit Mode
    Back To Home Page
    Assert Title On List    ${note_title}
    Open Todo    todo
    Enter Edit Mode
    Input Title    ${todo_title}
    Exit Edit Mode
    Back To Home Page
    Assert Title On List    ${todo_title}

Copy Note And Todo
    [Arguments]    ${note_title}    ${todo_title}
    [Setup]    Open Test Application
    [Teardown]    Close Application
    Create Note And Todo    ${note_title}    ${todo_title}
    Long Press Title    ${note_title}
    Click Copy Button
    Assert Title On List    ${note_title} (1)
    Long Press Title    ${todo_title}
    Click Copy Button
    Assert Title On List    ${todo_title} (1)
