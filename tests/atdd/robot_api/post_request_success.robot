***Settings***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Library    HttpLibrary.HTTP

****Variables****
${url}    https://jsonplaceholder.typicode.com

***Test Cases***
Post request success and response code should be 200
    Create session    jsonplaceholder    ${url}
    ${response}=     Get Request    jsonplaceholder     /posts    
    Should Be Equal    ${200}   ${response.status_code}
    Log to console    ${response.status_code}

Post request success and get response header
    Create session    jsonplaceholder    ${url}
    ${response}=     Post Request    jsonplaceholder     /posts  
    Log to console    ${response.content}
    Log Response Headers	  log_level=INFO


Post request success and get response
    Create session    jsonplaceholder    ${url}
    ${response}=     Post Request    jsonplaceholder     /posts  
    Log to console    ${response.content}