*** Settings ***
Library    Collections
Library    SeleniumLibrary



*** Test Cases ***
TC01
    [Tags]    Test2
    Open Browser   https://www.saucedemo.com/    chrome    options=add_argument("--headless")    executable_path=/usr/bin/chromedriver
    Maximize Browser Window
    Sleep    7
    Close Browser
    
    