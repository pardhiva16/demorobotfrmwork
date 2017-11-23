*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER} = Firefox
*** Keywords ***
Begin Web Test
    #Open Browser  about:blank  chrome
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser