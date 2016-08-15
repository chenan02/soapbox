Feature: Subscriptions
  As a user
  I want to subscribe to a channel
  So I can receive its news

  Background:
    Given I am at the channels page

  Scenario: User subscribes to channel
    When I click a channel's subscribe button
    Then I should see that I am subscribed

  Scenario: User unsubscribes from channel
    When I click a channel's unsubscribe button
    Then I should see that I am unsubscribed