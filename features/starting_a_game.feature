Feature: Starting a game
	In order to play Rock, Paper, Scissors
	To settle who pays for the bill
	I want to start a new game

Scenario: Game registration
	Given I am on the homepage
	When I follow "Register"
	Then I should see "What's your name?"

Scenario: Ready to play
	Given I am on the registration page
	When I enter my name
	And I return to the homepage
	Then I should view "Ready to play?"

Scenario: Playing a game
	Given I am on the ready to play page
	When I click in "Ready to play?"
	Then I should observe "Choose your sign!"