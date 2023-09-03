*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${HOME_HEADER_LABEL} =  Customers Are Priority One!


*** Keywords ***
Navigate to
    go to           ${START_URL}

Verify Page Loaded
    wait until page contains        ${HOME_HEADER_LABEL}