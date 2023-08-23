
*** Settings ***
Documentation    This is a resource file which conatins keywords.
Library    Browser

*** Keywords ***
Open google
    New Page    https://www.google.com

Accept cookies
    Click    //button//div[contains(text(),"Hylkää kaikki")]
    
Change to English language
    Click    //a[contains(text(),"English")]

Enter term
    [Arguments]    ${term}
    Type Text    //textarea[@jsname="yZiJbe"]    ${term}    

Click on search
    [Arguments]    ${srch_type}
    IF    ${srch_type}=="button"
        Click    //div[4]//center//input[@value="Google Search"]
    ELSE
        Click    //span[@class="z1asCe MZy1Rb"]
    END
    

Click on software testing wikipedia link
    Click    //h3[contains(text(),"Software testing")]

Verify URL of webpage should be ${WIKI_URL}
    Get Url    ==    ${WIKI_URL}

Message displayed should be ${google_msg}
    Get Text    //p[contains(text(),"Your search")]    ==    ${GOOGLE_MSG}    

Click on images link
    Click    //a[contains(text(),"Images")]    

Select "puppy" from filter
    Click    //span[contains(text(),"puppy")]

Click on search icon
    Click    //span[@class="z1asCe MZy1Rb"]
    
    
                                                                         