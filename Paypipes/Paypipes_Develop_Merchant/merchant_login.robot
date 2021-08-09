*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://pms.develop.paypipes.net/merchant/login
${email}        tromi@geekpicker.com
${password}     123456

*** Test Cases ***
Login Test
        open browser     ${url}  ${browser}
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[2]/input  ${password}
        sleep    3
        click button     Login
        close browser
