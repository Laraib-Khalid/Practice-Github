*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    Chrome
${username_xpath}    //input[@name="username"]
${pass_xpath}      //input[@name="password"]
${btn_xpath}       //button[@type="submit"]
${launch_page_xpath}  //div[@class="oxd-topbar-header-title"]
${Link_xpath}     xpath=//a[@href="/web/index.php/admin/viewAdminModule"]
${element_xpath}     xpath=(//input[@class="oxd-input oxd-input--active"])[2]
${username_xpath}   xpath=(//input[@class="oxd-input oxd-input--active"])[2]
${dropdown_xpath}   xpath=(//div[@class="oxd-select-text-input"])[1]
${element2_xpath}     xpath= //div[@role='listbox']//span[text()='Admin']
${list_xpath}     xpath= //div[@role='listbox']//span[text()='Admin']
${button_xpath}   xpath=//button[@type="submit"]
${element3_xpath}    xpath=//div[@class="orangehrm-container"]
*** Test Cases ***
dropdown
    Open Browser   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  ${Browser}

    Maximize Browser Window

    Set Selenium Speed    0.3

    Wait Until Element Is Visible    ${username_xpath}      5s

    Input Text    ${username_xpath}     Admin

    Input Text    ${pass_xpath}      admin123

    Click Button    ${btn_xpath}

    Wait Until Element Is Visible    ${launch_page_xpath}

    Click Link    ${Link_xpath}
    
    Wait Until Element Is Visible    ${element_xpath}    timeout=5s

    Input Text    ${username_xpath}   Admin

    Click Element    ${dropdown_xpath}
    
    Wait Until Element Is Visible    ${element2_xpath}   timeout=5s

    Click Element  ${list_xpath}

    Click Button    ${button_xpath}

    Wait Until Element Is Visible    ${element3_xpath}      10s

     Close Browser