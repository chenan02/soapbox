Feature: User Signin
  As a user
  I want to be able to sign in
  So I can manage my account

  Background:
    Given I am at the signin page

  Scenario: User signs in with valid credentials
    When I sign in with valid credentials
    Then I should be signed in

  Scenario: User tries to sign in with invalid credentials
    When I try to sign in with invalid credentials
    Then I should not be signed in
    And I should be notified the credentials are invalid