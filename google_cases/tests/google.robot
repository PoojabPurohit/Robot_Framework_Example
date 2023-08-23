*** Settings ***
Documentation    Basic example of google search test cases

Library    Browser
Resource    ../resources/keywords.resource
Suite Setup    New Browser    browser=${BROWSER}    headless=${HEADLESS}
Test Setup    New Context    viewport={'width': 1920, 'height': 1080}
Test Teardown    Close Context
Suite Teardown    Close Browser


*** Variables ***
${BROWSER}    chromium
${HEADLESS}    false
${WIKI_URL}    https://en.wikipedia.org/wiki/Software_testing
${GOOGLE_MESSAGE}    Your search - hgjsgfdgfhdsgj - did not match any documents.

*** Test Cases ***
TC001_Search_Software_testing_on_google
    [Documentation]    Verify clicking of Software testing wiki page
    [Tags]    positive
    Open google
    Accept cookies
    Change to English language
    Enter term    software testing
    Click on search    "button"
    Click on software testing wikipedia link
    Verify URL of webpage should be ${WIKI_URL}

TC002_Search_some_invalid_characters_on_google
    [Documentation]    Verify message displayed when invalid characters are 
    ...                searched on google
    [Tags]    negative
    Open google
    Accept cookies
    Change to English language
    Enter term    hgjsgfdgfhdsgj
    Click on search    "button"
    Message displayed should be ${GOOGLE_MESSAGE}

TC003_Verify_image_search_on_google
    [Documentation]    Verify image search result on google
    [Tags]    positive
    Open google
    Accept cookies
    Change to English language
    Click on images link
    Enter term    Dog
    Click on search    "icon"
    Select "puppy" from filter
    
    




    


    
    
    


