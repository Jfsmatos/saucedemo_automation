*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/global_variables.robot


*** Keywords ***
# Suite setup and teardown

Suite setup
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    5

Suite teardown
    Close Browser