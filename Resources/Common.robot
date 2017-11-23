*** Settings ***
#Library  SeleniumLibrary
Library   Selenium2Library
#Resource  C:/development/robot-scripts/demorobotfrmwork/Tests/Amazon.robot

*** Variables ***
#${BROWSER} = firefox

*** Keywords ***
Begin Web Test
    #Open Browser  about:blank  chrome
     Open Browser  about:blank  firefox
     Maximize Browser Window

End Web Test
    Close Browser