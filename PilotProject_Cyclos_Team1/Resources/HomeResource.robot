*** Settings ***
Documentation    All the page objects and keywords of HomePage page
Library    SeleniumLibrary


*** Variables ***
${register_btn}    xpath://div[text()=" Register "]
${verify_login}    xpath:(//div[@class="top-title"])[2]
${login_btn}    xpath:(//div[@class="ml-2"])[3]
${Marketplace}    xpath://div[text()="Marketplace"]

*** Keywords ***

Go to Register Page
    Sleep    5s
    Click Element    ${register_btn}

verify the login
    Element Text Should Be    ${verify_login}    Cyclos

Go to Login Page
    Sleep    5s
    Click Element    ${login_btn}

Go to MarketPlace Page
    Click Element    ${Marketplace}

