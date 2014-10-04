Feature: Starting a game
	In order to play Rock, Paper, Scissors
	To settle who pays for the bill
	I want to start a new game

Scenario: Game registration
	Given I am on the homepage
	When I follow "Register"
	Then I should see "What's your name?"