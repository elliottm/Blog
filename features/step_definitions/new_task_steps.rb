Given(/^I fill in the form correctly$/) do
  fill_in('task[title]', :with => "Task 1")
  fill_in('task[description]', :with => "yooo")
  fill_in('task[owner]', :with => "Mark")
end

Given(/^I fill in the form incorrectly$/) do
  fill_in('task[title]', :with => "Tas")
  fill_in('task[description]', :with => "yooo")
  fill_in('task[owner]', :with => "Mark")
end
