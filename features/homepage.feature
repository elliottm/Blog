Feature:
	In order to navigate through the wesbite
	As a user
	I want a homepage with links

Scenario: Homepage layout

Given I am on the homepage
Then I should see "My tasks"
Then I should see "Welcome"

Scenario: Navigate to tasks list

Given I am on the homepage
And I follow "My tasks"
Then I should see "List of current tasks:"