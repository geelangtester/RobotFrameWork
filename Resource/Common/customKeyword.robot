*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Wait and click
  [Arguments]  ${locator}
  Scroll Element Into View    ${locator}
  Wait Until Element Is Visible    ${locator}
  Click Element    ${locator}

Wait and input
  [Arguments]  ${locator}  ${input}
  Scroll Element Into View    ${locator}
  Wait Until Element Is Visible    ${locator}
  Input Text    ${locator}  ${input}
