*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CUSTOMERS_HEADER_LABEL} =      Our Happy Customers


*** Keywords ***
Verify Page Loaded
    wait until page contains    ${CUSTOMERS_HEADER_LABEL}
