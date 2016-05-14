Given(/^I have a rails project$/) do
  puts "I have a rails project"
end

When(/^I visit the home page$/) do
   visit 'pages/starter'
end

Then(/^I should see the home page$/) do
  expect(page).to have_content 'Rental Dashboard'
end
