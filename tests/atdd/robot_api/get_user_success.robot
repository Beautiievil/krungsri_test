*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    JSONLibrary
Library    BuiltIn

*** Variables ***
${url}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get request success and response code should be 200
    Create session    jsonplaceholder    ${url}
    ${response}=     Get Request    jsonplaceholder     /users
    Should Be Equal    ${200}   ${response.status_code}
    Log to console    ${response.status_code}

##Get request success and Return type should be application/json
##    Create session    jsonplaceholder    ${url}
##    ${response}=     Get Request    jsonplaceholder     /users

Get request success and Data type of 'Username' 
    Create session    jsonplaceholder    ${url}
    ${response}=     Get Request    jsonplaceholder     /users

    ${json_response}=    to json    ${response.content}
	${username}=    get value from json    ${json_response}    [2].username
	Log to console    ${username}

	${check_type_username}=    Evaluate   type(${username})
	Log to console    ${check_type_username}
    
Get request success and Data size should be 10
 	Create session    GetUsers    ${url}

 	${response}=     Get Request    GetUsers     /users
    ${json_str}=    Convert to String    ${response.content}

	${count_item}=    Get Count    ${json_str}    username
	Should be Equal As Strings    ${count_item}    10
    Log to console    ${count_item}