*** Settings ***

Resource  ../TestData/sample.xml
Resource  ../Resources/BuiltinXML.robot

*** Test Cases ***

XML get test
    get the xml nodes

