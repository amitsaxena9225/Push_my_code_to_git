*** Settings ***
#Documentation    Suite description
Documentation  Talk about what this test suites does

Resource   ../Resources/FrontofficeApp.robot

Resource   ../Resources/Common_web.robot

Test Setup  Begin Web Test
Test Teardown   End Web test

# robot -d results test/Front_office.robot

*** Variables ***
${BROWSER} = chrome
${URL} =http://www.robotframeworktutorial.com/front-office

*** Test Cases ***
Should be able to access "Team" Page
    [Documentation]  This is Test 1
    [Tags]  test1
    FrontofficeApp.Go to landing Page
    FrontofficeApp.Go to "TEAM"Page
    #log   executing test1
    #sleep  2s

"Team" Page should match requirements
    [Documentation]  This is test 2
    [Tags]  test2
    FrontofficeApp.Go to landing Page
    FrontofficeApp.Go to "TEAM"Page

