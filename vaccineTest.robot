*** Settings ***
Documentation    Some test using seleniumlibrary
Library          SeleniumLibrary

*** Variables ***
# variable names can contain spaces
${LOGIN URL}    https://vaccine-haven.herokuapp.com
${BROWSER}      Chrome
&{DICTVAR}      CitizenID=9621054641216                Vaccine=Pfizer    StieName=OGYHSite

*** Test Cases ***
#test cases 1: Visit the home page and verify 2 items on the home page. Don't write tests that depend a lot on the DOM or CSS styles, because those may change.
1. Test that can Open Browser the homepage of vaccine-heaven
    Open Browser vaccine-haven

2. Test about verify 2 items on the home page
    Page Should Contain Link      xpath://*[@id="nav__home__link"]            #should have link vaccine haven
    Page Should Contain Button    xpath://*[@id="check_site__link"]/button    #should have button Walk-in

#test cases 2: Visit the home page, then click on (make a reservation button), and create a reservation. Verify that the registration was created.
3. Test that can visit the homepage of vaccine-heaven
    Click Link    xpath://*[@id="nav__home__link"]    #should go to home page

4. Test that can click on (make a reservation button)
    Click Element    xpath://*[@id="reserve__link"]    #Click on make a reservation button

5. Test that create a reservation
    Input the Citizen_ID
    Select from list by Label    xpath://*[@id="site_name"]       ${DICTVAR.StieName}     #Choose Site
    Select From List By Label    xpath://*[@id="vaccine_name"]    ${DICTVAR.Vaccine}      #Choose Vaccine
    Click Element                xpath://*[@id="reserve__btn"]    #Click submit button

6. Test about verify that the registration was created
    Open my info page
    Element Text Should Be    xpath://*[@id="reserve_vaccine_value"]    ${DICTVAR.Vaccine}     #should have Vaccine name
    Element Text Should Be    xpath://*[@id="reserve_site_value"]       ${DICTVAR.StieName}    #should have Stie name

#test cases 3: Cancel the reservation that you made in the previous test.
7. Test that can cancel the reservation that you made in the previous.
    Open my info page
    Wait Until Page Contains Element    xpath://*[@id="cancel__btn"]
    Click Element                       xpath://*[@id="cancel__btn"]    #Click Cancel button

8. Test about verify that cancel the reservation
    Open my info page
    Element Text Should Not Be    xpath://*[@id="reserve_vaccine_value"]    ${DICTVAR.Vaccine}     #should not have Vaccine name
    Element Text Should Not Be    xpath://*[@id="reserve_site_value"]       ${DICTVAR.StieName}    #should not have Stie name

*** Keywords ***
# User-defined keywords (actions & expressions)

Open Browser vaccine-haven
    Open Browser               ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Input the Citizen_ID
    Input Text    xpath://*[@id="citizen_id"]    ${DICTVAR.CitizenID}

Open my info page
    Click Element                       xpath://*[@id="nav__info__link"]          #Click my info
    Input the Citizen_ID
    Click Element                       xpath://*[@id="info__btn"]                #Click submit button
    Wait Until Page Contains Element    xpath://*[@id="reserve_vaccine_value"]