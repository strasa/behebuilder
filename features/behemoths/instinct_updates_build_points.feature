Feature: Build points increment when trait is selected 
  So that AR players don't have to add up traits values manually
  As an AR player I want to have build points increment when I select traits.

  @javascript
  Scenario: Increment Build Points on Trait Select
    Given I go to the Behemoth Page
    And I have selected Category '3'
    And I have selected Instinct 'Berserker'
    Then I should see the '1/8' Build Points
