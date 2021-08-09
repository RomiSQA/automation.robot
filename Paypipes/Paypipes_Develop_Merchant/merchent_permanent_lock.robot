*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/click_element_resource.robot


*** Variables ***
${BROWSER}      firefox
@{list_of_browsers}     chrome  firefox
${URL}          https://pms.develop.paypipes.net/merchant/login
${EMAIL}        tromi@geekpicker.com
${password1}    1WrongAttampt
${password2}    2WrongAttampt
${password3}    3WrongAttampt
${password4}    4WrongAttampt
${password5}    5WrongAttampt
${password6}    6WrongAttampt


*** Test Cases ***

Wrong Pass Login Attempt 1
        ##FOR  ${i}   IN  @{list_of_browsers}
        open browser     ${URL}  ${BROWSER}
        maximize browser window
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[2]/input  ${password1}

        click button     Login



Wrong Pass Login Attempt 2
        click element       name:email
        input text          xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[1]/input    ${email}
        click element       name:password
        #wait until element is visible    xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[2]/input
        input text          xpath=/html/body/div[1]/div/div[1]/div[2]/form/div[1]/div[2]/input  ${password2}
        sleep    1
        click button     Login
        sleep    8

Wrong Pass Login Attempt 3
        click element    name:email
        input text       xpath=//input[@type='text'][@class='form-control form-control-solid placeholder-no-fix form-group']  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password3}
        sleep    1
        click button     Login
        sleep    8
Wrong Pass Login Attempt 4
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password4}
        sleep    1
        click button     Login
        sleep    8

Wrong Pass Login Attempt 5
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password5}
        sleep    1
        click button     Login
        sleep    8

Wrong Pass Login Attempt 6
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password6}
        sleep    1
        click button     Login
        sleep    10

Wrong Pass Login Attempt 7
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password2}
        sleep    1
        click button     Login
        sleep    8

Wrong Pass Login Attempt 8
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password3}
        sleep    1
        click button     Login
        sleep    8
Wrong Pass Login Attempt 9
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password4}
        sleep    1
        click button     Login
        sleep    8

Wrong Pass Login Attempt 10
        click element    name:email
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[1]/input  ${email}
        click element    name:password
        input text       xpath=/html/body/div[1]/div/div[1]/div[1]/form/div[2]/div[2]/input  ${password5}
        sleep    1
        click button     Login
        sleep    8

        CLOSE BROWSER

log to console