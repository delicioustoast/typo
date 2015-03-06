Feature: Should not be able to merge as a contributor




Scenario: A non-admin cannot merge articles
	Given I am logged into the user panel
	When I am on the contributor edit article page**
	I should not see "Merge Articles"	
