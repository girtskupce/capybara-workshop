Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open SignUp form
        Then I enter "girts.kupce@testdevlab.com","parole123!","web automation" information
        Then I close SignUp form
        
    Scenario: Enter information in Login form
        Given I am on Appimation home page
        When I open Login form
        Then I enter "web-automation@testdevlab.com" and "parole123" information
        Then Validate whether error message is visible

 
    