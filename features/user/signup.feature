Feature: User Signup
  As a user
  I want to be able to signup for the app
  In order to use the app

  Background:
    Given I am at the signup page

  Scenario: User signs up with valid phone number
    When I sign up with a valid phone number
    Then a new account should be created
    And I should be signed in

  Scenario: User tries to sign up with taken phone number
    When I sign up with a taken phone number
    Then a new account should not be created
    And a message saying the number is taken shows