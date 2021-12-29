Feature: Homepage
  Scenario: Navigate to Google homepage
    Given User have Google address
    When User enter Google webpage address
    And User click enter
    Then User should be on Google homepage