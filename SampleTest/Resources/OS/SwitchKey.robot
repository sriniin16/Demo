*** Settings ***
Library  switcher.py

*** Variables ***


*** Keywords ***

SwtichKey
    [Arguments]  ${dictionay}
    ${tasklist}  create list  a  b  c  d
    :FOR  ${tasknumber}  IN  @{dictionary}
    \   ${tasktype}  Get From Dictionary  ${dictionary}  ${tasknumber}
    \   ${task}  switch choice  ${tasktype}  ${tasknumber}
    \   ${runtask}

INT 2
    log to console  int 2 generated

INT 51
    log to console  int 51 generated

INT 9
    log to console  int 9 generated





