When(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
end

When(/^I open Sign Up form/) do
  @tests.login_tests.open_sign_up_form
end

When(/^I check whether it's visible/) do
  @tests.login_tests.sign_up_form_opened
end

When(/^I fill Sign Up form/) do
  @tests.login_tests.fill_signup_form()
end

When(/^I close Sign Up form/) do
  @tests.login_tests.close_sign_up_form
end

When(/I check whether form is closed/) do
  @tests.login_tests.sign_up_form_closed
end

When(/^I open Login form/) do
  @tests.login_tests.open_login_form
end  

When(/^I check whether Login form is opened/) do
  @tests.login_tests.login_form_opened
end

When(/^I fill Login form/) do
  @tests.login_tests.fill_login_form()
end  

When(/^I close Login form/) do
  @tests.login_tests.close_login_form
end  

When(/^I validate Login form/) do
  @tests.login_tests.validate_login
end  