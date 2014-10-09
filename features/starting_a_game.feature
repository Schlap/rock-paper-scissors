Feature: Starting a game
	In order to play Rock, Paper, Scissors
	To settle who pays for the bill
	I want to start a new game

Scenario: Game registration
	Given I am on the homepage
	When I enter my name
	Then I should see "Choose your sign!"

Scenario: Playing the game
	Given I am on the gamepage
	When I click on "rock"
	Then it should say "You chose rock!"