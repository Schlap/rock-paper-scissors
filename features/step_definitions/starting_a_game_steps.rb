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
  expect(current_path).to eq('/ready_to_play')
end

Then(/^I should view "(.*?)"$/) do |message|
  expect(page).to have_content "Ready to play?"
end

Given(/^I am on the ready to play page$/) do
  visit '/ready_to_play'
end

When(/^I click in "(.*?)"$/) do |link|
  click_link link
 end

Then(/^I should observe "(.*?)"$/) do |message|
  expect(page).to have_content "Choose your sign!"
end