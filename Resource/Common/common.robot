*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem

*** Keywords ***
Begin web test
    open browser                about:blank  ${BROWSER}
    set browser implicit wait   1sec
    maximize browser window
    set selenium speed          1sec

End web test
    sleep                       5sec
    close browser


