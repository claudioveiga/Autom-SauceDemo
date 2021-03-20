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

    it "-> Fluxo até a página Carrinho" do
        @produto.clicarCarrinho()

        expect(@carrinho.text_titulo.text).to include("Your Cart")
        expect(@carrinho.text_qty.text).to include("QTY")
        expect(@carrinho.text_desc.text).to include("DESCRIPTION")
        expect(@carrinho.btn_contShop.text).to include("CONTINUE SHOPPING")
        expect(@carrinho.btn_checkout.text).to include("CHECKOUT")
    end

    it "-> Inserir um item no carrinho" do
        @produto.addToCartBackpack()
        @produto.clicarCarrinho()

        expect(@carrinho.driver.page_source).to include("")
        expect(@carrinho.driver.page_source).to include("")
    end

    # it "-> Inserir dois item no carrinho" do
    #     @produto.addToCartJacket()
    #     @produto.addToCartOnesie()
    #     @produto.clicarCarrinho()

    #     expect(@carrinho.driver.page_source).to include("")
    #     expect(@carrinho.driver.page_source).to include("")
    #     expect(@carrinho.driver.page_source).to include("")
    # end

end