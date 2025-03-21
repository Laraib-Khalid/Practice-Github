*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    Chrome
${username_xpath}    //input[@name="username"]
${pass_xpath}      //input[@name="password"]
${btn_xpath}       //button[@type="submit"]
${launch_page_xpath}  //div[@class="oxd-topbar-header-title"]


*** Test Cases ***
dropdown
    Open Browser   ${URL}  ${Browser}

    Maximize Browser Window

    Set Selenium Speed    0.3

    Wait Until Element Is Visible    ${username_xpath}      5s

    Input Text    ${username_xpath}     Admin

    Input Text    ${pass_xpath}      admin123

    Click Button    ${btn_xpath}

    Wait Until Element Is Visible    ${launch_page_xpath}

    Click Link    xpath=//a[@href="/web/index.php/admin/viewAdminModule"]
    
    Wait Until Element Is Visible    xpath=(//input[@class="oxd-input oxd-input--active"])[2]   timeout=5s

    Input Text    xpath=(//input[@class="oxd-input oxd-input--active"])[2]  Admin

    Click Element    xpath=(//div[@class="oxd-select-text-input"])[1]
    
    Wait Until Element Is Visible    xpath= //div[@role='listbox']//span[text()='Admin']   timeout=5s

    Click Element   xpath= //div[@role='listbox']//span[text()='Admin']

    Click Button    xpath=//button[@type="submit"]

    Wait Until Element Is Visible    xpath=//div[@class="orangehrm-container"]

     Close Browser