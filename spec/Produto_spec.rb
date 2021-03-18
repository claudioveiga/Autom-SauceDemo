require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require "selenium-webdriver"
require "pry"

describe "Página de Produto" do

    # Antes de tudo, executar
    before(:each) do
        @driver = Selenium::WebDriver.for(:chrome)

        @login = LoginPage.new(@driver)
        @produto = ProdutoPage.new(@driver)
        @driver.navigate.to("https://www.saucedemo.com/")
        @login.fazerLogin("standard_user", "secret_sauce")
    end
    
    # Antes de cada, executar


    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end

    it "-> Fluxo até a página Produto" do
         expect(@login.driver.page_source).to include("Products")
    end

    it "-> Validar as informações do Produto backpack" do
        expect(@produto.driver.page_source).to include("Sauce Labs Backpack")
        expect(@produto.driver.page_source).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@produto.driver.page_source).to include("$29.99")
        expect(@produto.driver.page_source).to include("ADD TO CART")
    end

    it "-> Validar o filtro: A a Z" do
        expect(@login.driver.page_source).to include("Products")
    end

    it "-> Validar o filtro: Z a A" do
        expect(@login.driver.page_source).to include("Products")
    end

    it "-> Validar o filtro: High to Low" do
        expect(@login.driver.page_source).to include("Products")
    end

    it "-> Validar o filtro: Low to High" do
        expect(@login.driver.page_source).to include("Products")
    end

end
