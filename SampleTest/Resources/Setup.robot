*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Open a new browser and navigate to URL
    [Documentation]  To open a new browser instance and navigate to a specified URL
    [Arguments]  ${URL}  ${Browser}
    open browser  ${URL}  ${Browser}
    maximize browser window
    sleep  3s