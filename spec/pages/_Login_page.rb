#login
#input_username = driver.find_element(:id, 'user-name')
#input_pasword = driver.find_element(:id, 'password')

#btn_login = driver.find_element(:id, 'login-button')


#Textos login e senha
#text_title_username = driver.find_element(:css, '#login_credentials > h4')
#text_standard_user = driver.find_element(:css, 'standard_user')
#text_locked_out_user = driver.find_element(:css, 'locked_out_user')
#text_problem_user = driver.find_element(:css, 'problem_user')
#text_performance_glitch_user = driver.find_element(:css, 'erformance_glitch_user')


#text_title_password = driver.find_element(:css, 'body > div.login_wrapper > div.login_credentials_wrap > div > div.login_password > h4')
#text_secret_sauce = driver.find_element(:css, 'secret_sauce')

class LoginPage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
        #Login
            def input_nome
                driver.find_element(:id, 'user-name')
            end

            def input_senha
                driver.find_element(:id, 'password')
            end

            def btn_login
                driver.find_element(:id, 'login-button')
            end
        #end
    # end

    def fazerLogin(nome, senha)
        input_nome.send_keys(nome)
        input_senha.send_keys(nome)
        btn_login.click()
    end
end


