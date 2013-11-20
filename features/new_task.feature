Feature:

In order to store a list of tasks
As a user who wants to store their tasks
I want to be able to store tasks


Background:
Given I am on the homepage
And I follow "My tasks"
And I follow "New task"

Scenario:  Add task correctly

And I fill in the form correctly
And I press "Create Task"
Then I should see "yooo"

Scenario:  Add task incorrectly

And I fill in the form incorrectly
And I press "Create Task"
Then I should see "error"