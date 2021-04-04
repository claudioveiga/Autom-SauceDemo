require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Carrinho_page.rb')


describe "Pagina de Carrinho" do

    # Antes de tudo, executar
    
        before(:each) do
            @driver = Selenium::WebDriver.for(:chrome)
            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
            @carrinho = CarrinhoPage.new(@driver)

            @driver.navigate.to("https://www.saucedemo.com/")
            @login.fazerLogin("standard_user", "secret_sauce")
        
        end
    
    #end

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end

    it "-> Fluxo até a página Carrinho sem nada" do
        @produto.clicarCarrinho()

        #binding.pry
        expect(@carrinho.text_titulo.text).to include("YOUR CART")
        expect(@carrinho.text_qty.text).to include("QTY")
        expect(@carrinho.text_desc.text).to include("DESCRIPTION")
        expect(@carrinho.btn_contShop.text).to include("CONTINUE SHOPPING")
        expect(@carrinho.btn_checkout.text).to include("CHECKOUT")
    end

    it "-> Inserir um item no carrinho" do
        
        @produto.addToCartBackpack()
        @produto.clicarCarrinho()

        expect(@carrinho.link_1_titulo.text).to include("Sauce Labs Backpack")
        expect(@carrinho.text_1_item.text).to include("1")
        expect(@carrinho.text_1_desc.text).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@carrinho.text_1_price.text).to include("29.99")
        expect(@carrinho.btn_1_rem.text).to include("REMOVE")
    end

    it "-> Inserir dois itens no carrinho" do
        @produto.addToCartJacket()
        @produto.addToCartOnesie()
        @produto.clicarCarrinho()

        expect(@carrinho.link_1_titulo.text).to include("Sauce Labs Fleece Jacket")
        expect(@carrinho.text_1_item.text).to include("1")
        expect(@carrinho.text_1_desc.text).to include("It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.")
        expect(@carrinho.text_1_price.text).to include("49.99")
        expect(@carrinho.btn_1_rem.text).to include("REMOVE")

        expect(@carrinho.link_2_titulo.text).to include("Sauce Labs Onesie")
        expect(@carrinho.text_2_item.text).to include("1")
        expect(@carrinho.text_2_desc.text).to include("Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.")
        expect(@carrinho.text_2_price.text).to include("7.99")
        expect(@carrinho.btn_2_rem.text).to include("REMOVE")
    end

    # it "Fluxo voltar a tela de produto"

    # end

end