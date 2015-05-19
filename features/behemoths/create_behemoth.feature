Feature: User creates new behemoth
  So that AR players can quickly create high quality, rules-compliant Behemoths
  As an AR player I want to be able to create a Behemoth

  @javascript
  Scenario: Start to create a new Behemoth
    Given I go to the Behemoth Page
    Then I should have to select a Category

  Scenario: Add an Instinct
    Given I go to the Behemoth Page
    And I have selected Category '1'
    Then I should have to select an Instinct
