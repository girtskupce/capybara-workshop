require 'date'
module Users
    def Users.sign_up_info
        @sign_up_user_info ||= SignUp.new(args={email: 'test@test.com', pass: 'parole123!', pass_re: 'parole123', proj_name: 'automation'})
        @sign_up_user_info
    end

    class SignUp
        attr_reader :email, :pass, :pass_re, :proj_name
        def initialize(args={})
            defaults = {email: DateTime.now.strftime('%Q')+'@test.com', pass: 'parole123', pass_re: 'parole123', proj_name:DateTime.now}
            args = defaults.merge(args)
            @email = args[:email]
            @pass = args[:pass]
            @pass_re = args[:pass_re]
            @proj_name = args[:proj_name]
        end
    end    

    def Users.login_info
        @login_user_info ||= Login.new(args={login: 'automation@test.lv', login_pass: 'parole123'})
        @login_user_info
    end

    class Login
        attr_reader :login, :login_pass
        def initialize(args={})
            defaults = {login: DateTime.now.strftime('%Q')+'@test.com', login_pass: 'parole123'}
            args = defaults.merge(args)
            @login = args[:login]
            @login_pass = args[:login_pass]
        end    
    end    
end