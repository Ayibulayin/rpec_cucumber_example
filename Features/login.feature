Feature: Guru99 DemoPage Login
  To login on demo page we have to enter login details
  Scenario: Register on Guru99 demo page without email
    Given I am on the guru99 homepage
    When I enter blank details for the register
    Then the error message shown
    Scenario: Register on guru99 demo page with valid email
      Given I am on guru99 homepage
      When I enter details for register
      Then The login details shown