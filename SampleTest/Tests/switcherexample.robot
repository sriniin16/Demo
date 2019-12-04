*** Settings ***
Resource  ../Resources/OS/SwitchKey.robot

*** Variables ***


*** Test Cases ***

Enable choice
    ${taskDictionay}  create dictionary  1  INT2ilpn  2  INT9  3  INT51  4 INT2fullpallet
    swtichkey  ${taskDictionay}

