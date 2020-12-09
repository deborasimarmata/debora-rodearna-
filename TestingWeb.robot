*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LoginPage}      https://demo.opencart.com/admin/index.php?route=common/login    # url for Login Page
${browser}        chrome

*** Test Cases ***
Login with valid email and invalid password
    Open Browser    ${LoginPage}    ${Browser}
    Sleep 2s
    Input Text    id=input-username    userdemo
    Sleep 2s
    Input Text    id=input-password    makansateenakkali
    Sleep 2s
    Click Element    xpath=//*[@id="content"]/div/div/div/div/div[2]/form/div[3]/button
    Sleep 5s

Login with invalid email dan valid password
    Open Browser    ${LoginPage}    ${Browser}
    Input Text    id=input-username    debora
    Sleep 2s
    Input Text    id=input-password    pwdemo
    Sleep 2s
    Click Element    xpath=//*[@id="content"]/div/div/div/div/div[2]/form/div[3]/button
    Sleep 3s

Login with valid email blank password
    Open Browser    ${LoginPage}    ${Browser}
    Input Text    id=input-username    userdemo
    Sleep 2s
    Input Text    id=input-password
    Sleep 2s
    Click Element    xpath=//*[@id="content"]/div/div/div/div/div[2]/form/div[3]/button
    Sleep 3s

Login with blank email blank password
    Open Browser    ${LoginPage}    ${Browser}
    Input Text    id=input-username
    Sleep 2s
    Input Text    id=input-password
    Sleep 2s
    Click Element    xpath=//*[@id="content"]/div/div/div/div/div[2]/form/div[3]/button
    Sleep 3s

Login with valid email valid password
    Open Browser    ${LoginPage}    ${Browser}
    Input Text    id=input-username    userdemo
    Sleep 2s
    Input Text    id=input-password    psdemo
    Sleep 2s
    Click Element    xpath=//*[@id="content"]/div/div/div/div/div[2]/form/div[3]/button
    Sleep 3s
