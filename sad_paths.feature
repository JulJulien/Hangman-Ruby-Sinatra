Feature: Some sad parenthesis

Scenario: As a new player I should not be able to win
    Given I am on the home page
    And I press "New Game"
    When I go to "/win"
    Then I should see "Guess a letter"

Scenario: As a new player I should not be able to lose
    Given I am on the home page
    And I press "New Game"
    When I go to "/lose"
    Then I should see "Guess a letter"

Scenario: As a new player I should not be able to guess an invalid letter
    Given I am on the home page
    And I press "New Game"
    When I guess "&"
    Then I should see "Invalid guess"