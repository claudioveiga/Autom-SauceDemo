require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Inventario_page.rb')
require "selenium-webdriver"
require "pry"

describe "Pagina de Itens" do

    # Antes de tudo, executar
    before(:all) do
        @driver = Selenium::WebDriver.for(:chrome)

        @login = LoginPage.new(@driver)
        @produtos = ProdutosPage.new(@driver)
        @driver.navigate.to("https://www.saucedemo.com/")
        @login.fazerLogin("standard_user", "secret_sauce")
    end
    
    # Antes de cada, executar


    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end
    it "-> Login executado com sucesso" do
        @login.fazerLogin("standard_user", "secret_sauce")
        #binding.pry
        expect(@login.driver.page_source).to include("Products")
    end

end