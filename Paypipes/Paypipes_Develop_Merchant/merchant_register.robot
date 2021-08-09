*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}              chrome
${url}                  https://pms.develop.paypipes.net/merchant/login
${company_name}         Geek picker
${industry_type}        IT
${license_number}       000000000
${website}              www.geekpicker.com
${additional_websites}  N/A
${name}                 Romi
${surname}              Ahsan
${email}                Demo1@geekpicker.com
${password}             Tlksadl@121231
${password-confirm}     Tlksadl@121231

*** Test Cases ***
Register
        open browser     ${url}  ${browser}
        maximize browser window
        click link    Register
        click element    name:company_name
        input text    xpath://*[@id="company_name"]     ${company_name}
        select from list by label    country    Bangladesh
        click element    id:industry_type
        input text    xpath://*[@id="industry_type"]    ${industry_type}
        click element    name:license_number
        input text    xpath://*[@id="license_number"]   ${license_number}
        click element    id:website
        input text    xpath://*[@id="website"]  ${website}
        click element    id:additional_websites
        input text    xpath://*[@id="additional_websites"]  ${additional_websites}
        click element    id:name
        input text    xpath://*[@id="name"]     ${name}
        click element    id:surname
        input text    xpath://*[@id="surname"]  ${surname}
        click element    id:email
        input text    xpath://*[@id="email"]    ${email}
        click element    id:password
        input text    xpath://*[@id="password"]     ${password}
        click element    id:password-confirm
        input text    xpath://*[@id="password-confirm"]     ${password-confirm}
        select checkbox    name:terms
        click button    Register
        close browser




