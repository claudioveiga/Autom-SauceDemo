require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Inventario_page.rb')
require "selenium-webdriver"
require "pry"

describe "Pagina de Itens" do

    # Antes de tudo, executar
    before(:each) do
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

    it "-> Validar os textos da página Item" do
        expect(@item.getTextName).to include("Sauce Labs Backpack")
        expect(@item.getTextDesc).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@item.getTextPrice).to include("$29.99")
        expect(@item.getTextAdd).to include("ADD TO CART")
        expect(@item.getTextBack).to include("Back")
    end

end