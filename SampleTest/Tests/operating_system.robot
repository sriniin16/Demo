*** Settings ***
Resource  ../Resources/OS/os.robot

*** Test Cases ***
create directories
    create a base directory
    create directory 1
    create diretory 2

create files
    create the first file
    create the file 2
    create the file 3

Moving a file
    move file 3 from directory 2 to directory 1

copy a file
    copy file 1 from directory 1 to directory 2


