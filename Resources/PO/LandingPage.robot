*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Load
    Go To  ${APPURL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com