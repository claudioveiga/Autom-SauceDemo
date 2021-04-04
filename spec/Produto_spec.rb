require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')

describe "Página de Produto" do

    # Antes de tudo, executar

        before(:each) do
            @driver = Selenium::WebDriver.for(:chrome)
            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
            
            @driver.navigate.to("https://www.saucedemo.com/")
            @login.fazerLogin("standard_user", "secret_sauce")
        end

    #end
    

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end

    it "-> Fluxo até a página Produto" do
         expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Validar as informações do Produto backpack" do
        expect(@produto.link_backpack.text).to include("Sauce Labs Backpack")
        expect(@produto.text_descBackpack.text).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@produto.text_priceBackpack.text).to include("$29.99")
        expect(@produto.btn_addRemBackpack.text).to include("ADD TO CART")
    end

    it "-> Validar o filtro: A a Z" do
        expect(@produto.dbox_aZFilter.text).to include("Name (A to Z)")
    end

    it "-> Validar o filtro: Z a A" do
        expect(@produto.dbox_zAFilter.text).to include("Name (Z to A)")
    end

    it "-> Validar o filtro: High to Low" do
        expect(@produto.dbox_priceLowFilter.text).to include("Price (low to high)")
    end

    it "-> Validar o filtro: Low to High" do
        expect(@produto.dbox_priceHighFilter.text).to include("Price (high to low)")
    end

end
