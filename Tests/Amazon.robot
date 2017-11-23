*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/Amazon.robot  # necessary for lower level keywords in test cases

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} = chrome
${APPURL} = https://www.amazon.com

# command to put variables in run time
# pybot -d results -v BROWSER:firefox -v App URL:"https://www.google.com" i current tests
# pybot -d results -v  BROWSER:Firefox   i  current tests
# pybot -d results -v  BROWSER:Firefox test

# Copy/paste the below line to Terminal window to execute
# pybot -d results tests/amazon.robot

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke Search
    Amazon.Search for Products

Logged out user can view a product
    [Tags]  Smoke View
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart

#Logged out user must sign in to check out
   # [Tags]  Smoke
   # Amazon.Search for Products
  #  Amazon.Select Product from Search Results
   # Amazon.Add Product to Cart
   # Amazon.Begin Checkout

Feature 1 Test
  log  Doing Feature 1

Feature 2 Test
  log  Doing Feature 2
