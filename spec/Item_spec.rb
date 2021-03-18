require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Item_page.rb')
require "selenium-webdriver"
require "pry"

describe "Pagina de Itens" do

    # Antes de tudo, executar
    before(:all) do
        @driver = Selenium::WebDriver.for(:chrome)

        @login = LoginPage.new(@driver)
        @produtos = ProdutoPage.new(@driver)
        @item = ItemPage.new(@driver)
    end

 # Antes de cada, executar
    before(:each) do
        @driver.navigate.to("https://www.saucedemo.com/")
        @login.fazerLogin("standard_user", "secret_sauce")
        @produto.acessar_backpack()
    end

    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end


    it "-> Validar os textos da página Item" do
        binding.pry
        expect(@item.driver.page_source).to include("Sauce Labs Backpack")
        expect(@item.driver.page_source).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@item.driver.page_source).to include("$29.99")
        expect(@item.driver.page_source).to include("ADD TO CART")
        expect(@item.driver.page_source).to include("Back")
    end

end