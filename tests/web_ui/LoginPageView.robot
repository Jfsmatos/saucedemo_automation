*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          ../../resources/global_variables.robot
Resource          ../../resources/common.robot
Resource          ../../resources/login_page.robot    #keyword file

Suite Setup        Suite Setup
Suite Teardown     Suite Teardown

*** Test Cases ***
Open login page in browser
    [Documentation]    LP01 - Open the login page in the browser
    [Tags]    Login
    Verify login page is displayed    Swag Labs

Verify login page elements
    [Documentation]    LP02 - Verify the login page elements
    [Tags]    Login
    Verify login page is displayed    Swag Labs
    Verify login page elements

User tries to login without credentials
    [Documentation]    LP03 - User tries to login without credentials
    [Tags]    Login
    Verify login page is displayed    Swag Labs
    Verify user can't login without credentials    Epic sadface: Username is required
