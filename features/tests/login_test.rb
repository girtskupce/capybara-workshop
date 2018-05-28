class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.logo_check
  end

  def open_sign_up_form
    @pages.page_home.open_sign_up_form
  end  

  def sign_up_form_opened
    @pages.page_home.sign_up_visible
  end

  def fill_signup_form()
    sign_up_info = Users.sign_up_info
    @pages.page_home.sign_up_form_attributes(sign_up_info.email,
    sign_up_info.pass,sign_up_info.pass_re,sign_up_info.proj_name)
  end

  def close_sign_up_form
    @pages.page_home.close_sign_up_form
  end

  def sign_up_form_closed
    @pages.page_home.sign_up_closed
  end

  ####
  def open_login_form
    @pages.page_home.open_login_form  
  end

  def login_form_opened
    @pages.page_home.login_form_open_check
  end

  def fill_login_form()
    login_info = Users.login_info
    @pages.page_home.login_form_attributes(login_info.login, login_info.login_pass)
  end

  def close_login_form
    @pages.page_home.close_login_form
  end  

  def validate_login
    @pages.page_home.login_error_check
  end

end