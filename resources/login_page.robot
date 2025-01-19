
***Settings***
Library    SeleniumLibrary



***Variables***
${LOGIN_PAGE_LOGO}            xpath://div[@class="login_logo"]
${INPUT_USERNAME}             id=user-name
${INPUT_PASSWORD}             id=password
${BUTTON_LOGIN}               id=login-button
${CREDENTIALS_HINTSECTION}    xpath:/html/body/div/div/div[2]/div[2]/div
${ERROR_MESSAGE}              xpath://h3[@data-test="error"]

*** Keywords ***

Verify login page is displayed
    [Arguments]    ${expected_logo}
    Wait Until Page Contains Element    ${LOGIN_PAGE_LOGO}
    ${text_logo}    Get Text    ${LOGIN_PAGE_LOGO}
    Should Be Equal As Strings    ${text_logo}    ${expected_logo}
    Log    Login page displayed successfully

Verify login page elements
    Wait Until Page Contains Element     ${LOGIN_PAGE_LOGO}
    Element Should Be Visible            ${INPUT_USERNAME}
    Element Should Be Visible            ${INPUT_PASSWORD}
    Element Should Be Visible            ${BUTTON_LOGIN}
    Element Should Be Visible            ${CREDENTIALS_HINTSECTION}
    Log    Login page elements are displayed successfully

Verify user can't login without credentials
    [Arguments]    ${expected_error}
    Click Element    ${BUTTON_LOGIN}
    Wait Until Page Contains      Epic sadface: Username is required
    ${text_error}    Get Text    ${ERROR_MESSAGE}
    Should Be Equal As Strings    ${text_error}    ${expected_error}
    Log    Error message successfully displayed to the user