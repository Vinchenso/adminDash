Feature: Uploading data
  As an administrator
  I want to complete a form with mi portfolio summary data
  So that I can add monthly data

  Scenario: Addng monthly data
    Given I am on the home page
    When I click "Add New Data"
    And I input valid data into the form
    And I click "Confirm Data input"
    Then I should see the data I just inputed

