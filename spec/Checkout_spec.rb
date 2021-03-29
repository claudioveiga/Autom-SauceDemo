require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Carrinho_page.rb')
require_relative('./pages/_Checkout_page.rb')


describe "Pagina de Checkout" do

    # Antes de tudo, executar
    
        before(:each) do
            @driver = Selenium::WebDriver.for(:chrome)
            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
            @carrinho = CarrinhoPage.new(@driver)
            @checkout = CheckoutPage.new(@driver)

            @driver.navigate.to("https://www.saucedemo.com/")
            @login.fazerLogin("standard_user", "secret_sauce")
        
        end
    
    #end

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end

    it "-> Fluxo até a primeira parte com um produto" do
        @produto.addToCartBackpack()
        @produto.clicarCarrinho()
        @carrinho.checkout()

        expect(@checkout.text_title.text).to include("Checkout: Your Information")
        expect(@checkout.btn_cancelInfo.text).to include("CANCEL")

    end

    it "-> Preencher Your Information" do
        @produto.addToCartBackpack()
        @produto.clicarCarrinho()
        @carrinho.checkout()
        @checkout.fazerYourInfo("Abravanel", "Medeiros", 7897888)
        
        expect(@checkout.text_title.text).to include("Checkout: Overview")
    end

    
end