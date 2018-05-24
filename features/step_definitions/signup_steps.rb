When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.logoCheck
end

When(/^I open SignUp form/) do
  @pages.page_home.openSignUpForm
end

Then("I enter {string},{string},{string},{string} information") do |email, pass, pass_re, proj_name|
  @pages.page_home.fillSignUpForm(email, pass, pass_re, proj_name)
end

Then(/I close SignUp form/) do
  @pages.page_home.closeSignUpForm
end

Then(/I open Login form/) do
  @pages.page_home.openLoginForm
end

Then("I enter wrong {string}, {string} information") do |login, login_pass|
  @pages.page_home.fillLoginForm(login, login_pass)
end

Then(/I validate whether error message is visible/) do
  @pages.page_home.loginErrorCheck
end





