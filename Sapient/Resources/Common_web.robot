*** Settings ***
Documentation    Suite description
Library  Selenium2Library

Resource  ../Tests/Front_office.robot


*** Variables ***

*** Keywords ***

Begin Web Test
    open browser  ${URL}  ${BROWSER}
     maximize browser window


End Web test
    close all browsers
