*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Keywords ***
Begin Web Test
    #Initialize Selenium
    #set selenium speed    .2s
    set selenium timeout  10s

    open browser          about:blank         ${BROWSER}

    set window position    x=1280       y=-360
    set window size        width=1920    height=1030




End Web Test
         close browser
