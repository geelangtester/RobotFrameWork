*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${EXECDIR}$/chromedriver.exe

Begin web test
    open browser                about:blank  ${BROWSER}
    set browser implicit wait   1sec
    maximize browser window
    set selenium speed          1sec

End web test
    sleep                       5sec
    close browser
