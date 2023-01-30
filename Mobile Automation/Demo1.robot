*** Settings ***
Documentation     Two test cases one for creating account and second for swap and select the story ,one skip
                 ...  is to be selected manually as xpath is not proper(captcha).
Library   AppiumLibrary
*** Test Cases ***
For Creating Account
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=com.tellapp
    ...     appActivity=com.tellapp.MainActivity



    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Get started']
    Click Element    xpath=//android.widget.TextView[@text='Get started']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Email']
    Input Text    xpath=//android.widget.EditText[@text='Email']    radhikakavishwar11@gmail.com
    Click Element    xpath=(//android.widget.TextView[@text='Get started'])[2]
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='First name']
    Input Text    xpath=//android.widget.EditText[@text='First name']     Radhika
    Input Text    xpath=//android.widget.EditText[@text='Last name']     Kavishwar
    Input Password    xpath=//android.widget.EditText[@text='Password']          Radhika1234
    Click Element    xpath=(//*[@class='android.widget.ImageView'])[4]
    Click Element    xpath=(//android.widget.TextView[@text='Sign up'])[2]

    ${page_source}  Get Source
    Log To Console    ${page_source}
    [Teardown]   Close Application


Swap and Select
        Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=com.tellapp
    ...     appActivity=com.tellapp.MainActivity


     Set Appium Timeout    30s
     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Get started']
     Click Element    xpath=//android.widget.TextView[@text='Get started']
     Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Email']
     Input Text    xpath=//android.widget.EditText[@text='Email']    radhikakavishwar11@gmail.com
     Click Element    xpath=(//android.widget.TextView[@text='Get started'])[2]
     Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Password']
     Input Text     xpath=//android.widget.EditText[@text='Password']    Radhika1234
     Click Element    xpath=(//android.widget.TextView[@text='Sign in'])[2]
     ${count}   Get Matching Xpath Count   xpath=//*[@text='The Little Match Girl']
     WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='The Little Match Girl']
     END
     Wait Until Page Contains Element    xpath=//*[@text='The Little Match Girl']
     Click Element    xpath=//*[@text='The Little Match Girl']


       ${page_source}  Get Source
     Log To Console    ${page_source}
     [Teardown]   Close Application
