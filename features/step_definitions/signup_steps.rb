When(/^I am on Appimation home page/) do
  visit('/')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end 

When(/I open SignUp form/) do
  find(:css, '#signup-b').click
  unless find(:css, '#signup').visible?
    raise "element not visible"
  end  
end

When("I enter {string},{string},{string} information") do |email, password, proj_name|
  find(:css, 'form[action="/user"] input[type="email"]').send_keys(email)
  find(:css, 'input[name="password1"]').send_keys(password)
  find(:css, 'input[name="password2"]').send_keys(password)
  find(:css, 'input[name="project_name"]').send_keys(proj_name)
end

When(/^I close SignUp form/) do
  find(:css, '#signup .closecross').click 
end

When(/^Validate whether form was closed/) do
  unless find(:css, '#signup').visible?
    raise "element not visible"
  end 
end

When(/^I open Login form/) do
  find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "element not visible"
  end
end

When("I enter {string} and {string} information") do |login, login_pass|
  find(:css, 'form[action="/login"] input[name="login"]').send_keys(login)
  find(:css, 'input[name="password"]').send_keys(login_pass)
  find(:css, 'button[class="button button-block innerButton"]').click
end

When(/^Validate whether error message is visible/) do
  unless find(:css, ".alert-success + div .errorText").visible?
    raise "element not visible"
  end  
end  
  # ir aprakstīts, ka elements ir redzams un varam uz tā uzklikšķināt
#When(/^I close Try now/) do
#  find(:css, '#signup .closecross').click
#end


#When("I enter {string} and {string} in name in contact us") do |name, name2|
#  unless find(:css, '#name').visible?
#    raise "element not visible"
#    end  
#    find(:css, '#name').send_keys(name)
#    find(:css, '#name').native.clear
#    find(:css, '#name').send_keys(name2)
#end

