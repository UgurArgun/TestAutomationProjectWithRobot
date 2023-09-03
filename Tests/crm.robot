*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test
#Run the script
#robot -d results tests/crm.robot
*** Variables ***
${BROWSER} =                edge
${START_URL} =              https://automationplayground.com/crm/
${VALID_USERNAME} =         admin@robotfameworktutorial.com
${VALID_PASSWORD} =         password123


*** Test Cases ***
Should be able to add new customer
        [Documentation]    This is some basic info about the test
        [Tags]             1006         Smoke           Contacts
        CrmApp.Go to "Home" Page
        click link             Sign In
        wait until page contains    Login

        input text             id=email-id          ${VALID_USERNAME}
        input text             id=password          ${VALID_PASSWORD}
        click button           Submit

        wait until page contains    Customer Service
        wait until page contains    Our Happy Customer

        click link             id=new-customer
        wait until page contains    Add Customer

        input text             id=EmailAddress              abc@abc.com
        input text             id=FirstName                 Sam
        input text             id=LastName                  Adams
        input text             id=City                      Dallas
        select from list by value    id=StateOrRegion       TX
        select radio button    gender                       male
        select checkbox        name=promos-name
        click button           Submit
        wait until page contains    Success! New customer added.
        sleep             3s



*** Keywords ***
