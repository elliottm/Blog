Feature:

In order to remove tasks
As a user
I want to be able to delete tasks

Scenario: Delete tasks

Given I have tasks added
And I follow "Delete"
Then I should not see "Task 1"