Feature: Should not be able to merge as a contributor
	As a user
	In order to not use power not given to me
	I should not be able to merge as a contributor

Background:
	Given the blog is set up
	And the following articles exist:
	|title  |author  |body    |
	|test   |asdf    |texthere|



Scenario: A non-admin cannot merge articles
	Given I am logged into the user panel
	And I follow "All Articles"
	Then I should see "Manage articles"
	And I should see "test"
	When I am on the edit page for "test"
	Then I should not see "Merge Articles"
