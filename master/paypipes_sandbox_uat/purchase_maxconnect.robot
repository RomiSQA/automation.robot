*** Settings ***
Library        SeleniumLibrary  #Selenium2Liberary  #RPA.Browser.Selenium



*** Variables ***
${BROWSER}      firefox
${URL}          https://sandbox.paypipes.net/
${TEST_ID}      NaSfydwA0Rq3w1uFwYChDrDtkbXDnbwRazW/aLd0hrs=

${CUSTOMER_TOKEN}   bc72ce4f-a3a4-4c01-a681-8e088bab149d
${AMOUNT}       12000


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

#Tokenize Customer
#  Go To           https://sandbox.paypipes.net/tokenize/customer
#  Sleep   3s
#  Click Element   id:rdafFillup
#  sleep    3s
#  click button    Submit
#  sleep    3

Purchase via maxconnect
  go to           https://sandbox.paypipes.net/purchase
  sleep    3
  #click button    id:rdafFillup
  #sleep    2
  click element    id:ctoken
  input text        xpath://*[@id="ctoken"]     ${customer_token}

  select from list by value    gateway  maxconnect
  sleep    2
  select from list by value    card     false
  sleep    2
  click element    id:amount
  clear element text        xpath://*[@id="amount"]
  sleep    2
  input text        xpath://*[@id="amount"]     ${amount}

  sleep    2
  select from list by value    currency     JPY
  sleep    2
  click element    xpath://*[@id="description"]
  input text        xpath://*[@id="description"]        Test Purchase Mxconnect
  click button    Submit
  sleep    15s
#  click button    id:btnmaxconnect
#  sleep    5s

Show transection history
  go to             https://sandbox.paypipes.net/transactions
  sleep    2
  click element    xpath:/html/body/div/div[2]/div[1]/div[1]/div/div/table/tbody/tr[1]/td[9]/a/span
  sleep    5
  close browser
#  wait until element is visible    xpath://*[@id="cc-number"]
#  wait until element is enabled    xpath://*[@id="cc-number"]
#  click element    xpath://*[@id="cc-number"]
#  sleep    2s
#input text         xpath://*[@id="cc-number"]  ${CARD_NUMBER}
#  sleep    10s
#  Click Element       name:exp_monthyear
#  Input Text          xpath://*[@id="cc-exp"]      ${expiration_date}
#  Sleep   2s
#  Click Element       name:security_code
#  Input Text          xpath://*[@id="cc-cvc"]     ${SECURITY_CODE}
#  Sleep   2s
#  Click Element       name:card_holder
#  Input Text          xpath://*[@id="cc-name"]     ${NAME}
#  click element       xpath://*[@id="checkoutPayment"]/div[6]/button/span/b
#  sleep    10s
#  wait until element is visible    xpath://*[@id="frameDiv"]/table/tbody/tr[18]/td[1]/input
#  click element       xpath://*[@id="frameDiv"]/table/tbody/tr[18]/td[1]/input
