# frozen_string_literal: true

Given('I visit the homepage') do
  visit root_path
end

Given('I am a registered user') do
  @registered_user = FactoryBot.create(:user,
                                       email: 'tester@testdomain.test',
                                       password: 'pa$$word')
end

When('I fill in the login form') do
  click_on 'Log in'
  fill_in 'user_email', with: 'tester@testdomain.test'
  fill_in 'user_password', with: 'pa$$word'

  click_button 'Log in'
end

Then('I should be logged in') do
  expect(page).to have_content('Signed in successfully')
end

Given('I am logged in') do
  visit root_path
  click_on 'Log in'
  fill_in 'user_email', with: 'tester@testdomain.test'
  fill_in 'user_password', with: 'pa$$word'
  click_button 'Log in'
end

When('I click on the log out button') do
  click_on 'Log out'
end

Then('I should be redirected to the log in page') do
  expect(page).to have_content('Signed out successfully.')
end
