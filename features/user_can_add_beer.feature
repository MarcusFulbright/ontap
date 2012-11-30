Feature: Add Beer

	Scenario: Add 
		Given I am signed in
		And I press "Add Beer"
		And I fill in "chaser pale" for "search_query"
		And I press "Search"
		Then I should see "Chaser Pale"
		And I press "Add"
		Then I should see "Your Beer has been added"