class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    # Path for Apimation logo
    @logo_check = Element.new(:css, '#logo')
    
    # Paths for 'Sign Up button' and 'Sign Up' form
    @form_sign_up = Element.new(:css, '#signup-b')
    @signup_check = Element.new(:css, '#signup')
    
    # Paths for 'Sign Up' form's textboxes
    @signup_email = Element.new(:css, '#signup input[name="login"]')
    @signup_pass = Element.new(:css, '#signup input[name="password1"]')
    @signup_pass_repeat = Element.new(:css, '#signup input[name="password2"]')
    @signup_proj_name = Element.new(:css, '#signup input[type="text"]')
    
    # Path for 'Sign Up' forms 'X' button
    @button_close_try_now = Element.new(:css, '#signup .closecross')
    
    @TryNow_button = Element.new(:css, '#start_button')

    @form_login = Element.new(:css, '#login-b')
    @login_check = Element.new(:css, '#login')

    @login_email = Element.new(:css, '#login input[name="login"]')
    @login_pass = Element.new(:css, '#login input[name="password"]')
    @login_button = Element.new(:css, '#login .button')

    @login_error_check = Element.new(:css, '.alert-success +div .errorText') 
  end

  # Load Apimation Home page
  def load
    visit('/legacy')
  end

  # Check whether Apimation logo is visible
  def logoCheck
    @logo_check.isVisible
  end

  # Open 'Sign Up' form and check whether it's visible
  def openSignUpForm
    @form_sign_up.click
    @signup_check.isVisible
  end

  # Close 'Sign Up' form and check whether it's visible
  def closeSignUpForm
    @button_close_try_now.click
    @TryNow_button.isVisible
  end


  def fillSignUpForm(email,pass,pass_re,proj_name)
    @signup_email.send_keys(email)
    @signup_pass.send_keys(pass)
    @signup_pass_repeat.send_keys(pass_re)
    @signup_proj_name.send_keys(proj_name)
  end

  # Open 'Login' form and check whether it's visible
  def openLoginForm
    @form_login.click
    @login_check.isVisible
  end

  def fillLoginForm(login, login_pass)
    @login_email.send_keys(login)
    @login_pass.send_keys(login_pass)
    @login_button.click
  end

  def loginErrorCheck
    @login_error_check.isVisible
  end
end