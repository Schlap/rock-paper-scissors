Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter my name$/) do
  fill_in :player_name, :with => :player_name
  click_button 'Register'
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content "Choose your sign!"
end

Given(/^I am on the gamepage$/) do
  visit '/'
  fill_in :player_name, :with => :player_name
  click_button 'Register'
end

When(/^I click on "(.*?)"$/) do |button|
  click_button "rock"
end

Then(/^it should say "(.*?)"$/) do |message|
  expect(page).to have_content "You chose rock!"
end