Feature: User Api: user Endpoint Test

  
  Scenario: Use All Valid data in requerd options and make sure you get status code 200 peoper response
    Given My api base URL is "http://user.qa.elitecareer.net"
     #   And Port number is "port"
    When My request method is "GET"
        And I set header "fusion-api-key" as "fusionqateam"
       # And I set query parameter "param" as "value"
       # And I set path parameter "param" as "value"
      # And I set request body from "fileName"
        And I make a request to "/api/v1/user"
   		Then I expect status code as "200"
          And I want to print response body
          And I expect "messase" equals "This is sample output from 'user' endpoint" in response body
        # And I expect "node" contains "value" in response body
        
        
	Scenario: Use invalid request method POST and make sure get proper status code 405 proper error message
           Given My api base URL is "http://user.qa.elitecareer.net"
     #   And Port number is "port"
    When My request method is "POST"
        And I set header "fusion-api-key" as "fusionqateam"
       # And I set query parameter "param" as "value"
       # And I set path parameter "param" as "value"
      # And I set request body from "fileName"
        And I make a request to "/api/v1/user"
   		Then I expect status code as "405"
          And I want to print response body
          And I expect "data.detail" equals "Specified method is not allowed" in response body
        # And I expect "node" contains "value" in response body
        
        
  Scenario: for missing fusion-api-key and make sure you get status code 401 peoper error message
         Given My api base URL is "http://user.qa.elitecareer.net"
     #   And Port number is "port"
    When My request method is "GET"
        And I set header "InValid" as "fusionqateam"
       # And I set query parameter "param" as "value"
       # And I set path parameter "param" as "value"
      # And I set request body from "fileName"
        And I make a request to "/api/v1/user"
   		Then I expect status code as "401"
          And I want to print response body
          And I expect "data.detail" equals "The specified headers are missing" in response body
        # And I expect "node" contains "value" in response body
       
       
  Scenario: for Invalid Value of fusion-api-key and make sure you get status code 401 peoper error message
     Given My api base URL is "http://user.qa.elitecareer.net"
     #   And Port number is "port"
    When My request method is "GET"
        And I set header "fusion-api-key" as "InValid"
       # And I set query parameter "param" as "value"
       # And I set path parameter "param" as "value"
      # And I set request body from "fileName"
        And I make a request to "/api/v1/user"
   		Then I expect status code as "401"
          And I want to print response body
          And I expect "data.detail" equals "The specified header values are not supported" in response body
        # And I expect "node" contains "value" in response body
        
	Scenario: Use Invalid endpoint in requerd options and make sure you get status code 404 peoper error response
       Given My api base URL is "http://user.qa.elitecareer.net"
     #   And Port number is "port"
    When My request method is "POST"
        And I set header "fusion-api-key" as "fusionqateam"
       # And I set query parameter "param" as "value"
       # And I set path parameter "param" as "value"
      # And I set request body from "fileName"
        And I make a request to "/api/v1/userInvalid"
   		Then I expect status code as "404"
          And I want to print response body
          And I expect "data.detail" equals "The specified Endpoint is invalid" in response body
        # And I expect "node" contains "value" in response body

        
        
        