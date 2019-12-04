*** Settings ***

library  XML

*** Variables ***

${XML_Path}  TestData/sample.xml

*** Keywords ***

Get the xml nodes
    ${XML_Node_Count}  get element count  ${XML_Path}
