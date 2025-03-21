*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handle Simple Alert
    Open Browser    https://testpages.herokuapp.com/styled/alerts/alert-test.html    Chrome
    Maximize Browser Window
    Set Selenium Speed    .3s
    Click Button    xpath=//input[@id='alertexamples']
    Sleep    1s
    Handle Alert    action=ACCEPT   #click 'OK'

handle confirmation alerts

    Click Button    xpath=//input[@id='confirmexample']
    Sleep    1s
    Handle Alert    action=DISMISS  # Click 'Cancel'

    Click Button    xpath=//input[@id='confirmexample']
    Sleep    1s
    Handle Alert    action=ACCEPT  # Click 'OK'

Handel prompt alert

    # Ensure alert appears before handling it
    Wait Until Element Is Visible    xpath=//input[@id='promptexample']    timeout=5s
    Click Button    xpath=//input[@id='promptexample']

    # Wait for alert and input text
    Sleep    2s
    Input Text Into Alert    John Den

    # Accept the alert

    Close Browser



