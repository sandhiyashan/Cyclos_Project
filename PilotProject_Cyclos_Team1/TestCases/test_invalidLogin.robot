*** Settings ***
Documentation    Test to Login Page
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/login_data.xlsx   sheet_name=invalidLogin    
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/LoginResource.robot
Test Template    Invalid Login Test

*** Test Cases ***
inValid Login Test
   ${Username}    ${Password}

*** Keywords ***

Invalid Login Test
    [Arguments]    ${Username}    ${Password}
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    ${Username}    ${Password}
    LoginResource.click the login button
    LoginResource.check the error message