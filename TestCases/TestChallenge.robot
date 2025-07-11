*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary

*** Variables ***


*** Test Cases ***
Carousel_Test
    VAR    ${expected_count}=    15
    Open Browser    https://www.mall.cz/    chrome
    Click Button    xpath://button[@type = 'button' and (text() = 'OK, souhlasím' or . = 'OK, souhlasím')]
    Wait Until Element Is Visible    xpath://button[@type = 'button' and (text() = 'Zavřít' or . = 'Zavřít')]
    Click Element    xpath://button[@type = 'button' and (text() = 'Zavřít' or . = 'Zavřít')]
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    Length Should Be    ${carousel_elements}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel4']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel7']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel8']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel9']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel10']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel11']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel12']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel13']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}
    VAR    ${carousel_elements}=    Get Webelements    xpath://div[@id='productCarousel14']
    VAR    ${identifiers}=    Create List    ${carousel_elements}
    VAR    ${unique}=    Evaluate    ${identifiers}
    Length Should Be    ${unique}    ${expected_count}

API_Call_Test
    Open Browser    https://www.mall.cz/    chrome
    Click Button    xpath://button[@type = 'button' and (text() = 'OK, souhlasím' or . = 'OK, souhlasím')]
    Wait Until Element Is Visible    xpath://button[@type = 'button' and (text() = 'Zavřít' or . = 'Zavřít')]
    Click Element    xpath://button[@type = 'button' and (text() = 'Zavřít' or . = 'Zavřít')]

*** Keywords ***
