*** Settings ***
Library  Selenium2Library
*** Variables ***
${linkweb}  http://automationpractice.com/index.php
${browser}  chrome

${signInLocator}  //*[@class=\"header_user_info\"]
${inputEmailLoc}  id:email_create
${createAccButtonLoc}   //*[@id=\"SubmitCreate\"]
${createAccTextLoc}  //*[text()=\"Create an account\"]
${errorEmailTextLoc}  //*[@id=\"create_account_error\"]
${personalInfoLoc}  //*[text()=\"Your personal information\"]
${genderButtonLoc}  //*[@id=\"id_gender1\"]
${firstNameInputLoc}  id:customer_firstname
${lastNameInputLoc}  //*[@id=\"customer_lastname\"]
${passwordInputLoc}  //*[@id=\"passwd\"]
${frtnameAddressInputLoc}  //*[@id=\"firstname\"]
${lstnameAddressInputLoc}  //*[@id=\"lastname\"]
${addressInputLoc}  //*[@id=\"address1\"]
${cityInputLoc}  //*[@id=\"city\"]
${stateSelectLoc}  //*[@id=\"id_state\"]
${zipCodeInputLoc}  //*[@id=\"postcode\"]
${countryInputLoc}  //*[@id=\"id_country\"]
${mobileInputLoc}  //*[@id=\"phone_mobile\"]
${assignAddressInputLoc}  //*[@id=\"alias\"]
${registerButtonLoc}  //*[@id=\"submitAccount\"]
${createAccSuccessTextLoc}  //*[@class=\"info-account\"]

${containsTextPage}  Create an account
${emailFakeError}  abc
${emailFake}  phuthanhphat1212@ymail.com
${containsTextCreateAccountFail}  Invalid email address.
*** Test Cases ***
CreateAccountFail
    open browser  ${linkweb}   ${browser}
    maximize browser window
    click element  ${signInLocator}
    wait until page contains   ${containsTextPage}  timeout=10   error=false
    input text  ${inputEmailLoc}  ${emailFakeError}
    click button  ${createAccButtonLoc}
    wait until page contains  ${containsTextCreateAccountFail}
    element should be enabled  ${errorEmailTextLoc}
    close browser

CreateAccountSuccess
    open browser  ${linkweb}   ${browser}
    maximize browser window
    click element  ${signInLocator}
    wait until page contains   ${containsTextPage}  timeout=10   error=false
    input text  ${inputEmailLoc}  ${emailFake}
    click button  ${createAccButtonLoc}
    wait until element is visible  ${genderbuttonloc}   timeout=10   error=false
    click button  ${genderButtonLoc}
    input text   ${firstnameinputloc}   T
    input text   ${lastnameinputloc}   T
    input text  ${passwordinputloc}   T12345678
    input text  ${frtnameaddressinputloc}   T
    input text  ${lstnameaddressinputloc}   T
    input text   ${addressinputloc}   T
    input text  ${cityinputloc}   T
    select from list by index  ${stateselectloc}   1
    input text   ${zipcodeinputloc}   10001
    input text   ${mobileinputloc}   1232131232
    input text  ${assignaddressinputloc}    phuthanhphat11121@ymail.com
    click button  ${registerbuttonloc}
    wait until element is enabled  ${createaccsuccesstextloc}  timeout=10   error=false
    close browser

