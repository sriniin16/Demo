*** Settings ***
Documentation  To search a product and display the list of prices
Resource  ../Resources/AmazonResource.robot
Resource  ../Resources/Setup.robot
Resource  ../Resources/Teardown.robot
Test Setup  Open a new browser and navigate to URL
Test Teardown  close the current browser


*** Test Cases ***

Search for a product in amazon and display the model prices
    [Documentation]  Search for a product and view the product prices in ascending order
    [Tags]  test
    Search for a product
    Select boat brand of the product
    Display the model prices in logs