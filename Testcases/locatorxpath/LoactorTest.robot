*** Variables ***
${linkweb}  http://automationpractice.com/index.php
${browser}  chrome
${signInLocator}  //*[@class="header_user_info"]
${inputEmailLoc}  id:email_create
${createAccButtonLoc}   //*[@id="SubmitCreate"]
${createAccTextLoc}  //*[text()="Create an account"]
${errorEmailTextLoc}  //*[@id="create_account_error"]
${personalInfoLoc}  //*[text()="Your personal information"]
${genderButtonLoc}  //*[@id="id_gender1"]
${firstNameInputLoc}  id:customer_firstname
${lastNameInputLoc}  //*[@id="customer_lastname"]
${passwordInputLoc}  //*[@id="passwd"]
${frtnameAddressInputLoc}  //*[@id="firstname"]
${lstnameAddressInputLoc}  //*[@id="lastname"]
${addressInputLoc}  //*[@id="address1"]
${cityInputLoc}  //*[@id="city"]
${stateSelectLoc}  //*[@id="id_state"]
${zipCodeInputLoc}  //*[@id="postcode"]
${countryInputLoc}  //*[@id="id_country"]
${mobileInputLoc}  //*[@id="phone_mobile"]
${assignAddressInputLoc}  //*[@id="alias"]
${registerButtonLoc}  //*[@id="submitAccount"]
${createAccSuccessTextLoc}  //*[@class="info-account"]
${containsTextPage}  Create an account
${emailFakeError}  abc
${emailFake}  ngovanngoc2014@ymail.com
${containsTextCreateAccountFail}  Invalid email address.