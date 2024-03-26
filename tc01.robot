*** Settings ***
Library    Collections


*** Test Cases ***
TC01
    ${Dic}    Create Dictionary    name=harish
    ${json}    Evaluate    json.dumps($Dic)    json
    Log    ${json}