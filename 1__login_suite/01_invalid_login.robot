*** Settings ***
Documentation   This file contains invalid login inputs
Library  SeleniumLibrary
Library   DataDriver       file=../test_data/Opencart_Automation.xlsx        sheet_name=Invalid Login Test
Resource    ../Resource/Base/Common_Functions.resource
Test Template   Invalid Login Template
Test Setup   Launch Browser And Navigate to Url
Test Teardown   Close Browser


*** Test Cases ***
Invalid Login${test_case}
*** Keywords ***
Invalid Login Template
    [Arguments]   ${email}   ${password}   ${expec_error}
    Click Element    partial link=Login
    Input Text      id=input-email        ${email}
    Input Text      id=input-password      ${password}
    Click Element    xpath=//button[contains(text(),'Login')]
    Element Should Contain    xpath=//*[contains(text(),'No match')]      ${expec_error}
    Sleep    5sec