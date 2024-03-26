*** Settings ***
Library    Collections
Library    SeleniumLibrary


*** Test Cases ***
TC01
    Open Browser   https://www.saucedemo.com/    firefox    executable_path=/usr/bin/geckodriver
    Maximize Browser Window
    Sleep    3
    Close Browser