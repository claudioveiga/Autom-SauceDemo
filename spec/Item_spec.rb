require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Item_page.rb')


describe "Pagina de Itens" do

    # Antes de tudo, executar

        before(:all) do
            @driver = Selenium::WebDriver.for(:chrome)

            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
            @item = ItemPage.new(@driver)
        end

    #end

    # Antes de cada, executar

        before(:each) do
            @driver.navigate.to("https://www.saucedemo.com/")
            @login.fazerLogin("standard_user", "secret_sauce")
            @produto.acessarBackpack()
        end
    
    #end

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end


    it "-> Validar os textos da página Item 1" do
        expect(@item.driver.page_source).to include("Sauce Labs Backpack")
        expect(@item.driver.page_source).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@item.driver.page_source).to include("$29.99")
        expect(@item.driver.page_source).to include("ADD TO CART")
        expect(@item.driver.page_source).to include("Back")
    end

    it "-> Validar os textos da página Item 2" do
        expect(@item.text_nameItem.text).to include("Sauce Labs Backpack")
        expect(@item.text_descItem.text).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@item.text_priceItem.text).to include("$29.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("Back")
    end

end