*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${amazon_product_searchbar}  css=#twotabsearchtextbox
${amazon_search_button_locator}  css=input[value='Go']
${amazon_wait_for_search_results}  css=#rightResultsATF #resultsCol
${amazon_product_brand}  xpath=//input[@name='s-ref-checkbox-Boat']
${amazon_model_prices}  css=div[class='a-column a-span7'] span[class='a-size-base a-color-price s-price a-text-bold']

*** Keywords ***

Wait for the product search results
    [Documentation]  wait for the search results to be displayed
    wait until page contains element  ${amazon_wait_for_search_results}

Input a text in the search box
    [Documentation]  Search for a product in the search box
    [Arguments]  ${input_text}
    input text  ${amazon_product_searchbar}  ${input_text}
    click button  ${amazon_search_button_locator}
    wait for the product search results

Click on the boat brand checkbox
    [Documentation]  check the boat brand to filter results
    click button  ${amazon_product_brand}
    wait for the product search results
    sleep  3s

Get all the model prices
    [Documentation]  Get all price elements and iterate to display the prices in logs
    @{items}=  Get WebElements  ${amazon_model_prices}
    : FOR  ${item}  IN  @{items}
    \  ${text}  get text  ${item}
    \  log  ${text}
