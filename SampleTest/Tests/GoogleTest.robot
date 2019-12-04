*** Settings ***
Documentation  To search a product and display the list of prices
Resource  ../Resources/AmazonResource.robot
Resource  ../Resources/Setup.robot
Resource  ../Resources/Teardown.robot
Test Setup  Open a new browser and navigate to URL  http://www.google.com  chrome
Test Teardown  close the current browser


*** Test Cases ***

Open and navigate to a web page
    [Documentation]  Open a browser test
    [Tags]  test
    Log  The browser is opened web page is displayed  console=${True}