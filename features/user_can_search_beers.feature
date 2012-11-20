Feature: User Can Search Beers

	Background:
	Given I am signed in
	And I press "Add Beer"

	
	Scenario: By Beer Name
		And I fill in "kingpin" for "beer_query"
		And I press "Search"
		Then I should see "KINGPIN"
		
	Scenario: By Beer Name(2)
		And I fill in "chaser pale" for "beer_query"
		And I press "Search"
		Then I should see "Chaser Pale"




	