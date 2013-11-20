Feature:

In order to add a comment to a task
As a user
I want to be able to add a comment

Scenario:  Add comment

Given I have tasks added
And I follow "Show"
And I fill in a comment
And I press "Create Comment"
Then I should see "comment"