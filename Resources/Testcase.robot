*** Settings ***
Library  SeleniumLibrary
Resource    Resources/PO/SignUpPage.robot

*** Keywords ***


*** Test Cases ***
User must Sign Up
    [Documentation]  User is able to fill information in sign up page
    [Tags]  Smoke
    Open Browser    https://www.salesforce.com/form/demo/crm-sales-demos/#  ff
    Set Selenium speed  1
    Wait Until Page Contains Element    xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[1]
    Maximize Browser Window
    SignUpPage.Enter Sign up details
    Input Text  xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[2]  Vaaasavada
    Input Text  xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[3]  Senior Engineer
    Input Text  xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[4]  heer@gmail.com
    Input Text  xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[6]  0555555555
    Input Text  xpath=//ul[@class='clearfix vertical form-ul']/descendant::input[7]  abc
    Click Element   xpath=//*[@id="form-container"]/ul/li[7]/div/div[2]/a
    Click Element   xpath=/html/body/ul[1]/li[3]/a
    Click Element   xpath=//*[@id="form-container"]/ul/li[8]/div/div[2]/a
    Click Element   xpath=/html/body/ul[3]/li[3]
    Click Element   xpath=//*[@id="form-container"]/div[2]/div
    Page Should Contain Element  xpath=//*[@id="main"]/div/div/div[2]/div[1]/div[2]/div/div/div[2]/div[2]/div[1]
    Element Text Should Be  xpath=//*[@id="main"]/div/div/div[2]/div[1]/div[2]/div/div/div[2]/div[2]/div[1]  NEXT STEPS
    Close All Browsers


