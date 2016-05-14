Feature: Dashboard
  As an adminstrator
  I want to see the Dashboard
  So that I can get a snapshot of my business performance

  Scenario: Home page
    Given I have a rails project
    When I visit the home page
    Then I should see the home page
