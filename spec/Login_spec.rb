require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')

describe "Pagina de Login" do

    # Antes de tudo, executar
    before(:all) do
        @driver = Selenium::WebDriver.for(:chrome)

        @login = LoginPage.new(@driver)
        @produto = ProdutoPage.new(@driver)
    end
    
    # Antes de cada, executar
    before(:each) do
        @driver.navigate.to("https://www.saucedemo.com/")
    end

    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end

    it "-> Login executado com erro" do
        @login.fazerLogin("standard_user", "senhaerrada")
        
        expect(@login.driver.page_source).to include("Epic sadface: Username and password do not match any user in this service")
    end

    it "-> Login executado com sucesso" do
        @login.fazerLogin("standard_user", "secret_sauce")
        
        expect(@login.driver.page_source).to include("Products")
    end

end