*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

close the current browser
    [Documentation]  Close the current browser window
    log  closing the browser
    close browser