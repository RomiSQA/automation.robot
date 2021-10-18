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

Withdraw Process        #Thynderxpay
    Go To       https://sandbox.paypipes.net/withdraw
    Click Button    Prefill Form
    Sleep   10s
    Click Button    Submit
    wait until element contains    xpath://*[@id="wrapper"]/div/div/div/table/tbody/tr[8]/td/div     Withdraw
    Page Should Contain      Withdraw
    Log to console      Withdrawal Successful

