*** Settings ***
Library    Collections
Library    SeleniumLibrary



*** Test Cases ***
TC01
    [Tags]    Test
    Open Browser   https://www.saucedemo.com/    firefox    options=add_argument("--headless")    executable_path=geckodriver
    Maximize Browser Window
    Sleep    7
    Close Browser
    