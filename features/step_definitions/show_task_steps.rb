Given(/^I have tasks added$/) do
  visit('/tasks/new')
  fill_in('task[title]', :with => "Task 1")
  fill_in('task[description]', :with => "yooo")
  fill_in('task[owner]', :with => "Mark")
  click_on('Create Task')
  click_link('My tasks')
end