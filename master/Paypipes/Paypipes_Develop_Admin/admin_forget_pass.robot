*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}              chrome
${url}                  https://pms.develop.paypipes.net/admin/login
${email}                tromi@geekpicker.com
${password}             TwB62CExWbeS


*** Test Cases ***
Forget Password
        open browser    ${url}  ${browser}
        maximize browser window
        sleep    2
        click element    xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/div/a
        click element    name:email
        sleep    3
        input text       xpath://*[@id="email"]   tromi@geekpicker.com
        sleep    3
        click button    Send Reset Password Link
        close browser





