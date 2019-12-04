*** Settings ***
Library  OperatingSystem

*** Variables ***
${output_directory} =  Outputs
${directory1} =  first directory
${directory2} =  second directory
${file1} =  first file.txt
${file2} =  second file.txt
${file3} =  third file.txt

*** Keywords ***
create a base directory
    create directory  ${output_directory}
    should exist  ${output_directory}
    log  The created directory exists

create directory 1
     ${directory_path} =  join path  ${output_directory}  ${directory1}
     create directory  ${directory_path}
     should exist  ${directory_path}
     log  The directory1 is created

create diretory 2
     ${directory_path} =  join path  ${output_directory}  ${directory2}
     create directory  ${directory_path}
     should exist  ${directory_path}
     log  The directory2 is created

create the first file
    ${file_path} =  join path  ${output_directory}  ${directory1}  ${file1}
    create file  ${file_path}  text inside file 1
    should exist  ${file_path}
    log  The file 1 is created

create the file 2
    ${file_path} =  join path  ${output_directory}  ${directory2}  ${file2}
    create file  ${file_path}  text inside file 2
    should exist  ${file_path}
    log  The file 2 is created

create the file 3
    ${file_path} =  join path  ${output_directory}  ${directory2}  ${file3}
    create file  ${file_path}  text inside file 3
    should exist  ${file_path}
    log  The file 3 is created

Move file 3 from directory 2 to directory 1
    ${source_path} =  join path  ${output_directory}  ${directory2}  ${file3}
    ${dest_path} =    join path  ${output_directory}  ${directory1}  ${file3}

    move file  ${source_path}  ${dest_path}
    should exist  ${dest_path}
    should not exist  ${source_path}
    log  The file 3 is moved to directory 1

Copy file 1 from directory 1 to directory 2
    ${source_path} =  join path  ${output_directory}  ${directory1}  ${file1}
    ${dest_path} =    join path  ${output_directory}  ${directory2}  ${file1}

    copy file  ${source_path}  ${dest_path}
    should exist  ${dest_path}
    should exist  ${source_path}
    log  The file 1 is successfully copied
