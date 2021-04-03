require_relative('./_Base_page.rb')

class LoginPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

        #Login
        
            def input_nome
                driver.find_element(:id, '#user-name')
            end

            def input_senha
                driver.find_element(:id, '#password')
            end

            def btn_login
                driver.find_element(:id, '#login-button')
            end

            def text_error
                driver.find_element(:css, '#login_button_container > div > form > div.error-message-container.error > h3')
            end

        #end

    # end

    
    def fazerLogin(nome, senha)
        input_nome.send_keys(nome)
        input_senha.send_keys(senha)
        btn_login.click()
    end

end


