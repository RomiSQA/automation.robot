*** Settings ***
Library    SeleniumLibrary


*** Variables ***
@{list_of_browser}      chrome  firefox
${url}                  https://pms.develop.paypipes.net/admin/login
${email}                tromi@geekpicker.com
${password}             Q2ayy4irSidF


*** Test Cases ***
Login Test
        FOR  ${i}    IN     @{list_of_browser}
        open browser     ${url}  ${i}
        maximize browser window
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[1]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[1]/div[2]/input  ${password}
        click button     Login
        sleep    8
        close browser
        END



