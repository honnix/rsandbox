Feature: Multiplication
  In order to avoid silly mistakes
  As a math idiot
  I want to be told the production of the two numbers

  Scenario: Multiply two numbers
    Given I have entered 5 into the calculator
    And I have entered 7 into the calculator
    When I press mul
    Then the result should be 35 on the screen
