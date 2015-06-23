Feature: User selects category and appropriate stats populate
  So that AR players don't have to look up category stats
  As an AR player I want to be able to have stats automatically populate on category selection.

  @javascript
  Scenario: Populate Stats on Category Select
    Given I go to the Behemoth Page
    And I have selected Category '3'
    Then I should see the '0/8' Build Points
    And I should see the '6 + 3A' Initial Hand
    And I should see the '1 + A' Card Draw

