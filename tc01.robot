*** Settings ***
Library    Collections
Library    SeleniumLibrary


*** Test Cases ***
TC01
    Open Browser   https://www.saucedemo.com/    firefox    options=add_argument("--headless")    executable_path=geckodriver
    Maximize Browser Window
    Sleep    3
    Close Browser