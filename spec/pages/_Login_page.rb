require_relative('./_Base_page.rb')

class LoginPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

        #Login
        
            def input_nome
                driver.find_element(:css, '#user-name')
            end

            def input_senha
                driver.find_element(:css, '#password')
            end

            def btn_login
                driver.find_element(:css, '#login-button')
            end

            def text_error
                driver.find_element(:css, '#login_button_container > div > form > div.error-message-container.error > h3')
            end

            def text_user
                driver.find_element(:css, '#login_credentials')
            end

            def text_passw
                driver.find_element(:css, '#root > div > div.login_wrapper > div.login_credentials_wrap > div > div.login_password')
            end

        #end

    # end

    
    def fazerLogin(nome, senha)
        input_nome.send_keys(nome)
        input_senha.send_keys(senha)
        btn_login.click()
    end

end


