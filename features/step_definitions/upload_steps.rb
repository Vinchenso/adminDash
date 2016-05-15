
Given(/^I am on the home page$/) do
  visit '/'
end


When(/^I click "([^"]*)"$/) do |button|
  click_link('button')
end

When(/^I input valid data into the form$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the data I just inputed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


