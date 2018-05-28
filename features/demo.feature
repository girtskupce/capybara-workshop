Feature: Demo Feature

    Scenario: Open Sign Up Form
        When I am on Appimation home page
        Then I open Sign Up form
        Then I check whether it's visible
        Then I fill Sign Up form
        Then I close Sign Up form
        Then I check whether form is closed

    Scenario: Open Login Form    
        When I am on Appimation home page
        Then I open Login form
        Then I check whether Login form is opened
        Then I fill Login form
        Then I close Login form
        Then I validate Login form