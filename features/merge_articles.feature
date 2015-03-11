Feature: Merge Articles
	As a blog administrator
	In order to combine content
	I want to merge similar articles

Background:
	Given the blog is set up
	And the following articles exist:
	|title	|author 	 |body	|
	|first  |writefriend |asdf  |
	|second |writefriend |qwer |

	And I am logged into the admin panel
  #And the 



Scenario: An admin can merge articles
  When I follow "All Articles"
  And I follow "first"
  Then I should see "Merge Articles"

Scenario: When articles are merged, the merged article should contain the text of both previous articles.
 	When I follow "All Articles"
 	And I follow "first"
 	And I fill in merge_with with the id of "second"
 	And I press "Merge"
 	Then I should see "Manage articles"
 	And I should see "first"
 	And I should not see "second"

 	When I follow "first"
 	Then I should see "asdf"
 	And I should see "qwer"


Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).  

Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.

Scenario: The title of the new article should be the title from either one of the merged articles.

