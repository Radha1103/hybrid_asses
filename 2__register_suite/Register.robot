*** Settings ***
Documentation   This file contains valid register inputs and one captcha with is not verifird
Library  SeleniumLibrary
Library   DataDriver       file=../test_data/Opencart_Automation.xlsx       sheet_name=Valid Register Test
Resource    ../Resource/Base/Common_Functions.resource
Test Template   Valid Register Template
Test Setup   Launch Browser And Navigate to Url
Test Teardown   Close Browser
***Test Case***
Add Valid Register${test_cases}
*** Keywords ***
Valid Register Template
      [Arguments]    ${user_name}  ${first_name}   ${last_name}   ${email}   ${password}
      Click Element     xpath=(//*[text()='Register'])[2]
     Input Text    id=input-username    ${user_name}
     Input Text    id=input-firstname    ${first_name}
     Input Text    id=input-lastname    ${last_name}
     Input Text    id=input-email    ${email}
     Input Text    name=password     ${password}
     Click Element    xpath=//button[text()='Register']
     Sleep    5s