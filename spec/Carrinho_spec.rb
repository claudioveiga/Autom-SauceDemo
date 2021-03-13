require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Inventario_page.rb')


describe "Pagina de Login" do

    # Antes de tudo, executar
    before(:all) do
        @driver = Selenium::WebDriver.for(:chrome)

        @login = LoginPage.new(@driver)
        @produtos = ProdutosPage.new(@driver)
    end
    
    # Antes de cada, executar
    before(:each) do
        @driver.navigate.to("https://www.saucedemo.com/")
    end

    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end

    it "-> Fluxo até a página Carrinho" do
        @login.fazerLogin("standard_user", "secret_sauce")
        #binding.pry
        expect(@login.driver.page_source).to include("Products")
    end

end