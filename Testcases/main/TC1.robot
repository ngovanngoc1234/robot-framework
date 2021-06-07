*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
OpenApp
    open application    http://localhost:4723/wd/hub         platformName=ANDROID   platformVersion=9   deviceName=emulator-5554    appPackage=com.google.android.calculator    appActivity=com.android.calculator2.Calculator       automationName=UIAutomator2