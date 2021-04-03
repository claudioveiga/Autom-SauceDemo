require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')

describe "Pagina de Login" do

    # Antes de tudo, executar

        before(:each) do
            @driver = Selenium::WebDriver.for(:chrome)
            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)

            @driver.navigate.to("https://www.saucedemo.com/")
        end

    #end

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end

    it "-> Login executado com erro" do
        @login.fazerLogin("standard_user", "senhaerrada")
        
        expect(@login.driver.page_source).to include("Epic sadface: Username and password do not match any user in this service")
    end

    it "-> Login executado com sucesso standard_user" do
        @login.fazerLogin("standard_user", "secret_sauce")
        
        expect(@login.driver.page_source).to include("PRODUCTS")
    end

    it "-> Login executado com erro locked_out_user" do
        @login.fazerLogin("locked_out_user", "secret_sauce")
        
        expect(@login.driver.page_source).to include("Epic sadface: Sorry, this user has been locked out.")
    end

    it "-> Login executado com sucesso problem_user" do
        @login.fazerLogin("problem_user", "secret_sauce")
        
        expect(@login.driver.page_source).to include("PRODUCTS")
    end

    it "-> Login executado com sucesso performance_glitch_user" do
        @login.fazerLogin("performance_glitch_user", "secret_sauce")
        
        expect(@login.driver.page_source).to include("PRODUCTS")
    end

end