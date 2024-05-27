*** Settings ***
Documentation    Test to Login Page
Library    SeleniumLibrary
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot
Resource    ../Resources/HomeResource.robot
Resource    ../Resources/MyAdvertisement.robot

*** Test Cases ***

add new advertisement
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Go to MarketPlace Page
    MyAdvertisement.click my advertisements
    MyAdvertisement.add new advertisements
    MyAdvertisement.fill the advertisement
    MyAdvertisement.click save button

search advertisement
    HomeResource.Go to Login Page
    LoginResource.Fill the login form    sandhiyas    Sand@123
    LoginResource.click the login button
    HomeResource.Go to MarketPlace Page
    MyAdvertisement.click my advertisements
    Sleep    5s
    MyAdvertisement.search functionality
    MyAdvertisement.verify the result

