Feature: Demo Feature

    Scenario: Open SignUp Form
        Given I am on Appimation home page
        When I open SignUp form
        Then I enter "girts.kupce@tdl.lv","parole123","parole123","Automation" information
        Then I close SignUp form

    Scenario: Open LoginIn Form
        Given I am on Appimation home page
        When I open Login form
        Then I enter wrong "apimation@testdevlab.com", "parole123!" information
        Then I validate whether error message is visible
