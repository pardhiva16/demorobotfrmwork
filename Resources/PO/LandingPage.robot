*** Settings ***
Library  Selenium2Library
#Resource  C:/development/robot-scripts/demorobotfrmwork/Tests/Amazon.robot



*** Keywords ***
Load
     Go To    https://www.amazon.com

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com