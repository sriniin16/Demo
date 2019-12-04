*** Settings ***
Resource  ../Resources/Po/AmazonPO.robot

*** Variables ***
${amazon_product_input_text}  headphones


*** Keywords ***
Search for a product
    [Documentation]  To search for a product and wait until list of products is displayed
    Input a text in the search box  ${amazon_product_input_text}
    log  The searched product is displayed

Select boat brand of the product
    [Documentation]  To select a brand (boat) and filter the results
    Click on the boat brand checkbox
    log  The selected brand is displayed

Display the model prices in logs
    [Documentation]  Get all the prices of the products
    Get all the model prices
    log  All model prices are now displayed