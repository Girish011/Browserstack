*** Settings ***
Library     Browser

*** Variables ***
${URL}                  https://google.com
${EXPECTED_TITLE}       Google

*** Test Cases ***
Verify Page Title With Browser Library
    New Browser    chromium    headless=False
    New Page    ${URL}
    Sleep    3
    Get Title    ==    ${EXPECTED_TITLE}
    Close Browser
