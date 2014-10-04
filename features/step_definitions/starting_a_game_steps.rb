Given(/^I am on the homepage$/) do
  visit '/'
 end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content "What's your name?"
end

Given(/^I am on the registration page$/) do
  visit '/registration'
end

When(/^I enter my name$/) do
  fill_in :player_name, :with => :player_name
  click_button 'Register'
end

When(/^I return to the homepage$/) do
  expect(current_path).to eq('/')
end

Then(/^I should view "(.*?)"$/) do |message|
  expect(page).to have_content "Ready to play?"
end