@javascript @wip
Feature: Add Beer
	Scenario: Add Beer
		Given I am signed in
		And I press "Add Beer"
		And I fill in "chaser pale" for "search_query"
		And I press "Search"
		Then I should see "Chaser Pale"
		When I press "Add"
		Then I should see "Your Beer Has Been Added"
		And I should see "Chaser Pale" within "beer list"