*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

#Run the script
#robot -d results tests/crm.robot
*** Variables ***



*** Test Cases ***
Should be able to add new customer
        [Documentation]    This is some basic info about the test
        [Tags]             1006         Smoke           Contacts
        #Initialize Selenium
        set selenium speed    .2s
        set selenium timeout  5s
        log                Starting the test case
        open browser       https://automationplayground.com/crm/    edge

        click link         Sign In

        sleep             3s
        close browser


*** Keywords ***
