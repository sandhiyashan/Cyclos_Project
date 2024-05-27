*** Settings ***
Documentation    Test to Login Page
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/login_data.xlsx   sheet_name=validLogin    
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Test Template    Valid Login Test

*** Test Cases ***
Valid Login Test case
   ${username}    ${password}

*** Keywords ***

Valid Login Test
    [Arguments]    ${username}    ${password}
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    ${username}    ${password}
    LoginResource.click the login button
    HomeResource.verify the login