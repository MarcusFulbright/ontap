Feature: User Can Search Beers

	Background:
	Given I am signed in
	And I press "Add Beer"

	Scenario: By Beer Name
		And I fill in "chaser pale" for "Beer Search"
		And I press "Search"
		Then I should see "Chaser Pale"

	Scenario: By Brewery
		And I fill in "blackstone" for "Beer Search"
		And I press "Search"
		Then I should see "Blackstone Resturant & Brewery"
	