Feature: View Beer List

	Scenario: No Beers
		Given I am signed in
		And I press "My Beers"
		Then I should see "You Have Not Added Any Beers"

	Scenario: With Beers
		Given I am signed in as "eliza@example.com"
		And #@user has "My Beers"
		|Name|  |Style|
		|Chaser Pale| |kolch|
		|St. Charles Porter| |Porter|
		|Evil Eye Stout| |Stout|
		|Guiness| |Stout|
		And I press "My Beers"
		Then I should see a list of the beers I have added