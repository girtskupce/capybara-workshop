class HomePage < BasePage
    attr_accessor :button_start
  def initialize
  # Path for Apimation logo
  @logo_check = Element.new(:css, '#logo')
    
  # Paths for 'Sign Up button' and 'Sign Up' form
  @form_sign_up = Element.new(:css, '#signup-b')
  @signup_check = Element.new(:css, '#signup')
  
  # Paths for 'Sign Up' form's textfields
  @signup_email = Element.new(:css, '#signup input[name="login"]')
  @signup_pass = Element.new(:css, '#signup input[name="password1"]')
  @signup_pass_repeat = Element.new(:css, '#signup input[name="password2"]')
  @signup_proj_name = Element.new(:css, '#signup input[type="text"]')
  
  # Path for 'Sign Up' forms 'X' button
  @button_close_try_now = Element.new(:css, '#signup .closecross')
  
  # Button to 'Login' form
  @form_login = Element.new(:css, '#login-b')
  @login_check = Element.new(:css, '#login')

  # Login form's textfields and button
  @login_email = Element.new(:css, '#login input[name="login"]')
  @login_pass = Element.new(:css, '#login input[name="password"]')
  @login_button = Element.new(:css, '#login .button')
  
  # Login form's error message
  @login_error_check = Element.new(:css, '.alert-success +div .errorText') 
end

# Load Apimation Home page
def load
  visit('/legacy')
end

# Check whether Apimation logo is visible
def logo_check
  @logo_check.notVisible
end

# Open 'Sign Up' form and check whether it's visible
def open_sign_up_form
  @form_sign_up.click
end

def sign_up_visible
  @signup_check.notVisible
end

# Close 'Sign Up' form and check whether it's visible
def close_sign_up_form
  @button_close_try_now.click
end

def sign_up_closed
  @signup_check.Visible
end

# Fill 'SignUp' form
def sign_up_form_attributes(email,pass,pass_re,proj_name)
  @signup_email.send_keys(email)
  @signup_pass.send_keys(pass)
  @signup_pass_repeat.send_keys(pass_re)
  @signup_proj_name.send_keys(proj_name)
end

# Open 'Login' form and check whether it's visible
def open_login_form
  @form_login.click
end

def login_form_open_check
  @login_check.notVisible
end

# Fill 'Login' form's textfields and click on button
def login_form_attributes(login, login_pass)
  @login_email.send_keys(login)
  @login_pass.send_keys(login_pass)
end

def close_login_form
  @login_button.click
end  

# Check whether 'Login' form is visible
def login_error_check
  sleep(1)
  @login_error_check.notVisible
end

end