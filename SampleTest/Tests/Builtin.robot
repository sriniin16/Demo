*** Settings ***
Documentation  this is a test for builtin libraries
Library  Dialogs

*** Variables ***
${GLOBAL_VARIABLE1} =  this is a global vairable


*** Test Cases ***
Declare and set variables
    ${sample_test_data} =  set variable  this variable is set in declare and set variables keyword
    set test variable  ${set_another_sample_test_data}  this is a test variable set
    set suite variable  ${set_suite_variable}  this is a suite variable set
    set global variable  ${SET_GLOBAL_VARIABLE}  this is a global variable set

Logging library keyword samples
    comment  ${GLOBAL_VARIABLE1}
    comment  this is a random string comment
    log  this is a random string log
    log many  log1  log2  log3  log4
    log to console  this log can be seen only in console
    log variables  #this should display all variables in scope
    

repeating the keywords
    pause execution
    repeat keyword  10 Times  something

*** Keywords ***
something
    log  this is a keyword to repeat




