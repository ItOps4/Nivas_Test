*** Settings ***
Library    Collections
Library    SeleniumLibrary


*** Test Cases ***
TC01
    Create Webdriver    Firefox
    Go To    https://www.saucedemo.com/
    Maximize Browser Window
    Sleep    3
    Close Browser