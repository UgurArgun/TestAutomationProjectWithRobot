*** Settings ***
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/Customers.robot
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/Logout.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot


*** Variables ***


*** Keywords ***
Go to "Home" Page
    Home.Navigate to
    Home.Verify Page Loaded

CrmApp.login With Valid Credentials
    [Arguments]     ${Email}        ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials      ${Email}        ${Password}
    Customers.Verify Page Loaded


