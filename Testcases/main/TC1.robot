*** Settings ***
Library   AppiumLibrary
*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=9}
*** Test Cases ***
OpenApp
    open application    http://localhost:4723/wd/hub         platformName=${ANDROID_PLATFORM_NAME}   platformVersion=${ANDROID_PLATFORM_VERSION}  eviceName=emulator-5554    appPackage=com.google.android.calculator    appActivity=com.android.calculator2.Calculator       automationName=${ANDROID_PLATFORM_VERSION}
