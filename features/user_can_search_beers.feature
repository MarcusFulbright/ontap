
Feature: User Can Search Beers

	Background:
	Given I am signed in
	And I press "Add Beer"

	
	Scenario: By Beer Name
		And I fill in "kingpin" for "search_query"
		And I press "Search"
		Then I should see "kingpin"
	@wip
	Scenario: By Beer Name(2)
		And I fill in "chaser pale" for "search_query"
		And I press "Search"
		Then I should see "chaser pale"

	Scenario: By Brewery
		And I fill in "blackstone" for "search_query"
		And I press "Search"
		Then I should see "Blackstone Resturant & Brewery"




	