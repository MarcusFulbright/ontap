@wip
Feature: View Beer List
	
	Scenario: No Beers
		Given I am signed in
		And I press "My Beers"
		Then I should see "You Have Not Added Any Beers"

	Scenario: With Beers
		Given I am signed in
		And I press "Search Beers"
		And I fill in "chaser pale" for "search_query"
		And I press "Search"
		Then I should see "Chaser Pale"
		And I press "Add"
		Then I should see "Chaser Pale"
