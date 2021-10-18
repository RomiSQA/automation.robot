*** Settings ***
Library        SeleniumLibrary  #Selenium2Liberary  #RPA.Browser.Selenium



*** Variables ***
${BROWSER}      firefox
${URL}          https://sandbox.paypipes.net/
${TEST_ID}      NaSfydwA0Rq3w1uFwYChDrDtkbXDnbwRazW/aLd0hrs=

${CARD_NUMBER}          4000000000000002
#@{card}                 0000/000000000000
${EXPIRATION_DATE}      1/23

${SECURITY_CODE}        123
${NAME}                 visa

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

Purchase via Cardpay
  Go To           https://sandbox.paypipes.net/purchase
  Sleep   3s
  Click Element   id:rdafFillup
  sleep    5s
  click button    Submit
  sleep    2s
#  wait until element is visible    xpath://*[@id="cc-number"]
#  wait until element is enabled    xpath://*[@id="cc-number"]
#  click element    xpath://*[@id="cc-number"]
#  sleep    2s
  #input text         xpath://*[@id="cc-number"]  ${CARD_NUMBER}
  sleep    10s
  Click Element       name:exp_monthyear
  Input Text          xpath://*[@id="cc-exp"]      ${expiration_date}
  Sleep   2s
  Click Element       name:security_code
  Input Text          xpath://*[@id="cc-cvc"]     ${SECURITY_CODE}
  Sleep   2s
  Click Element       name:card_holder
  Input Text          xpath://*[@id="cc-name"]     ${NAME}
  click element       xpath://*[@id="checkoutPayment"]/div[6]/button/span/b
  sleep    10s
  wait until element is visible    xpath://*[@id="success"]
  click element       xpath://*[@id="success"]

#     click element   xpath://*[@id="checkoutPayment"]/div[6]/button/span/b
#    Log to console      Purchase Success