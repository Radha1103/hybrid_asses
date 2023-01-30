*** Settings ***
Documentation   This file contains general activities like selecting and validating text.
Library  SeleniumLibrary
Resource    ../Resource/Base/Common_Functions.resource
Test Setup   Launch Browser And Navigate to Url
Test Teardown   Close Browser

*** Test Cases ***
TC2

    Click Element      xpath=//a[contains(text(),'Resources')]
    Click Element      xpath=//a[contains(text(),'Community Forums')]
    Click Element      xpath=//a[contains(text(),'Forum Rules')]
    Select From List By Label    css=#st     7 days
    Select From List By Label    css=#sk   Author
    Select From List By Label    css=#sd   Ascending
    Click Element    name=sort
    Element Should Contain    xpath=//p[contains(text(),'Users browsing')]    Users browsing
    Click Element      xpath=//a[contains(text(),'Marketplace')]
    Click Element    xpath=//a[contains(text(),'Google Shopping for OpenCart')]
    Sleep    3s