*** Settings ***
Library    Collections
Library    SeleniumLibrary
Library    OperatingSystem


*** Test Cases ***
TC01
    [Tags]    Test2
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${options}    add_argument    --incognito
    Call Method    ${options}    add_argument    --headless    
    ${driver}    Create Webdriver    Chrome    options=${options}
    Go To    https://www.saucedemo.com/
    Maximize Browser Window  
    Sleep    5
    Close Browser
    