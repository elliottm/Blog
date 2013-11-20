Given(/^I fill in a comment$/) do
  fill_in('Commenter', :with => 'hello')
  fill_in('Comment', :with => 'helloooooo')
end
