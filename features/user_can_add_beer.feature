Feature: Add Beer
	
	Scenario: Add Beer
		Given I am signed in
		And I press "Add Beer"
		And I fill in "chaser pale" for "Beer Search"
		And I click "Chaser Pale"
		When I click "Add Beer"
		Then I should see "Your Beer Has Been Added"