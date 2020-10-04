*** Settings ***
Library         SeleniumLibrary
Resource       ../common/variable.robot
Resource       credential.txt

*** Keywords ***

#Amazon Login PageObject
User able open amazon
    go to                             ${url_sign_in_amazon}

User able input email
    input text                        ${login_email}       ${email}

User able input password
    input password                    ${user_password}     ${password}

User able continue
    Wait and click                      ${continue_button}

User submit credential
    Wait and click                      ${submit_Sign_In}

User able tap sign out from side bar
    Wait and click                      ${sign_out_button}
