*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}              chrome
${url}                  https://pms.develop.paypipes.net/partner/login
${phone_number}         00000000000
${company_name}         Geek picker
${industry_type}        IT
${license_number}       000000000
${street}               100
${city}                 Dhaka
${state}                Bangladesh
${post_code}            1212
${website}              www.GeekPicker.com
${email}                Demo1@geekpicker.com
${password}             Tlksadl@121231
${password-confirm}     Tlksadl@121231

*** Test Cases ***
Register
        open browser     ${url}  ${browser}
        maximize browser window
        click link    Register
        click element    id:name
        input text    xpath://*[@id="name"]     ${company_name}
        click element    id:phone
        input text    xpath://*[@id="phone"]    ${phone_number}
        click element    id:street
        input text    xpath://*[@id="street"]    ${street}
        click element    id:city
        input text    xpath://*[@id="city"]        ${city}
        click element    id:state
        input text    xpath://*[@id="state"]        ${state}
        select from list by label    country    Bangladesh
        click element    id:post_code
        input text    xpath://*[@id="post_code"]    ${post_code}
        click element    id:email
        input text    xpath://*[@id="email"]    ${email}
        click element    id:website
        input text    xpath://*[@id="website"]  ${website}
        click element    id:password
        input text    xpath://*[@id="password"]     ${password}
        click element    id:password-confirm
        input text    xpath://*[@id="password-confirm"]     ${password-confirm}
        wait until element is visible    xpath:/html/body/div[1]/div/div[1]/div[2]
        select checkbox    name:terms
        click button    Register
        close browser




