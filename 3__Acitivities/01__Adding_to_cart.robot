*** Settings ***
Documentation   This file contains selecting item and putting in cart.
Library  SeleniumLibrary
Resource    ../Resource/Base/Common_Functions.resource
Test Setup   Launch Browser And Navigate to Url
Test Teardown   Close Browser

*** Test Cases ***
Adding to Cart
     Click Element    link=Demo
     Click Element   xpath=//span[contains(text(),'View Store Front')]
     Switch Window   url=https://demo.opencart.com/
     Click Element     xpath=//a[text()='Components']
     Click Element    partial link=Monitors (2)
     Click Element    partial link=Samsung SyncMaster 941BW
     Input Text    id=input-quantity    2
     Element Should Contain    xpath=//h1[contains(text(),'Samsung SyncMast')]    Samsung SyncMaster
     Click Element    id=button-cart
     Sleep    5s

