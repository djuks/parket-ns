Feature: Authentication

  In order to use the website
  As a user
  I should be able to sign up, log in and log out

Scenario: User Logs In
  Given I am a registered user
  And I visit the homepage
  When I fill in the login form
  Then I should be logged in

Scenario: User Logs Out
  Given I am a registered user
  And I am logged in
  And I visit the homepage
  When I click on the log out button
  Then I should be redirected to the log in page
