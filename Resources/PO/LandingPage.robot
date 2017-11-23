*** Settings ***
Library  Selenium2Library

*** Variables ***
${APPURL} = https://www.amazon.com

*** Keywords ***
Load
    Go To  ${APPURL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com