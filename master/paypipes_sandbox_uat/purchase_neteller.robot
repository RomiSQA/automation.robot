*** Settings ***
Library    SeleniumLibrary  #Selenium2Liberary


*** Variables ***
${BROWSER}      firefox
${URL}          https://sandbox.paypipes.net/
${TEST_ID}      NaSfydwA0Rq3w1uFwYChDrDtkbXDnbwRazW/aLd0hrs=

*** Test Cases ***
Login With Test ID
    OPEN BROWSER                    ${URL}  ${BROWSER}
    MAXIMIZE BROWSER WINDOW
    CLICK ELEMENT                   name:test_id
    INPUT TEXT                      xpath=//INPUT[@name="test_id"]  ${TEST_ID}
    WAIT UNTIL ELEMENT IS VISIBLE   xpath=/html/body/div[1]/div[2]/form/button
    CLICK ELEMENT                   xpath=/html/body/div[1]/div[2]/form/button
    SLEEP                           2s
    LOG TO CONSOLE                  Login in sandbox

Purchase via Neteller              #purchase with Neteller getway, redirected to Neteller login page.
    Go To           https://sandbox.paypipes.net/purchase
    Sleep   3s
    Click Element   id:rdafFillup
    Sleep   3s
    select from list by value    gateway   neteller
    sleep    2
    select from list by value    card  false
    sleep    2s
    Click Button        Submit
    sleep    5s
    wait until element is visible    xpath://*[@id="email"]
    wait until element is enabled    xpath://*[@id="email"]
    click element    xpath://*[@id="email"]
    clear element text    xpath://*[@id="email"]
    input text      xpath://*[@id="email"]  neteller@paypipes.com
    click button    btnNetellerPayment
    sleep    2s
    close browser
    log to console     Successfully redirected to Neteller login page.

#For Neteller Login Page
#    wait until element is visible    xpath://*[@id="user_authentication_email"]
#    wait until element is enabled    xpath://*[@id="user_authentication_email"]
#    click element    xpath://*[@id="user_authentication_email"]
#    input text    xpath://*[@id="user_authentication_email"]    neteller@paypipes.com
#    wait until element is enabled    xpath://*[@id="user_authentication_password"]
#    click element    xpath://*[@id="user_authentication_password"]
#    input password    xpath://*[@id="user_authentication_password"]     Paysafe@123
#    sleep    2s
#    click button    Log in

