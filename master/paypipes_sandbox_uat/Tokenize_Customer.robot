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

Tokenize Customer
    Click Element                   xpath=//*[@id="sidenav01"]/li[4]/a/span
    Sleep   2s
    Go To                           https://sandbox.paypipes.net/tokenize/customer
    Click Element                   id:rdafFillup
    Sleep   2s
    Click Button                    Submit
    Sleep   4s


*** Keywords ***
Click Element Wait
    [Arguments]    ${locator}=//*[@id="nav-tokenizecustomer"]   ${timeout}=5s    ${mustWait}=False
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}
    Run Keyword If    $mustWait == True    Sleep    1s
    Click Element    ${locator}