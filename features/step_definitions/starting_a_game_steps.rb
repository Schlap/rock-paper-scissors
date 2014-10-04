Given(/^I am on the homepage$/) do
  visit '/'
 end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content "What's your name?"
end