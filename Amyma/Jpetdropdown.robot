*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://petstore.octoperf.com/actions/Catalog.action
${Browser}    Chrome

*** Test Cases ***
Valid Login

    Open Browser   ${URL}  ${Browser}

    Maximize Browser Window

    Set Selenium Speed    0.3s

    Click Link    xpath=//div[@id="Menu"]//descendant::a[2]

    Click Link    xpath=//div[@id="Content"]//descendant::a

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[1]     004

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[2]      Bss@2233

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[3]    Bss@2233

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[4]    amyma

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[5]    usman

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[6]    amymarajpoot1@gmail.com

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[7]    066490445688

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[8]    23 A main road, lhg

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[9]    23 A main road, lhg

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[10]    Lahore

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[11]    punjab

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[12]    23456

    Input Text    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[13]    Pakistan

    Select From List By Index    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[14]  0

    Select From List By Index    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[15]   1

    Select Checkbox    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[16]

    Select Checkbox    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[17]

    Click Button    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[18]


    Wait Until Element Is Visible    xpath= //b[text()='Note']//parent::p

    Close Browser