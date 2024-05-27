*** Settings ***
Documentation    Test to Register Page
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/RegisterResource.robot
Resource    ../Resources/LoginResource.robot

*** Variables ***
${name}    abc
${login}    abc12345
${email}    abc123@gmail.com
${website}    www.google.com
${gender}    male
${gender2}    female
${mobile}    9856743210
${land_line}    (201) 555-0123
${address}    gandhi street
${zip}    637503
${city}    salem
${region}    tamilnadu
${password}    adc@123
${confirm_password}    adc@123

*** Test Cases ***

Valid register with all the fields
    HomeResource.Go to Register Page
    RegisterResource.Verify Register Page opens
    RegisterResource.Fill the Required feilds    ${name}    ${login}    ${email}
    RegisterResource.Fill the Remaining profile feilds    ${website}    ${gender2}    ${mobile}    ${land_line}
    RegisterResource.Enable address fields
    RegisterResource.Fill the address fields    ${address}    ${zip}    ${city}    ${region}
    RegisterResource.Click next button
    RegisterResource.fill password fields    ${password}    ${confirm_password}
    RegisterResource.click Registration confirmation checkbox
    RegisterResource.click submit button
    RegisterResource.verify the registration is successful    
    

register from login page
    HomeResource.Go to Login Page
    LoginResource.click register page
    Set Browser Implicit Wait    5s
    RegisterResource.assert title
    



