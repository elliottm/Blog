Feature:

In order to rank priorities of tasks
As a user of the interface
I want to be able to vote priority on a task

@javascript
Scenario:  Vote priority up
Given I have tasks added
And I press "⬆"
Then I should see "1"

@javascript
Scenario:  Vote priority down
Given I have tasks added
And I press "⬇"
Then I should see "-1"
