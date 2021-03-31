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

    #Your Information

        it "-> Fluxo até a primeira parte com um produto" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()

            expect(@checkout.text_title.text).to include("Checkout: Your Information")
            #expect(@checkout.input_firstName.text).to include("First Name")
            #expect(@checkout.input_lastName.text).to include("Last Name")
            #expect(@checkout.input_zipCode.text).to include("Zip/Postal Code")
            #expect(@checkout.btn_continue.text).to include("CONTINUE")
            expect(@checkout.btn_cancelInfo.text).to include("CANCEL")
        end

        it "-> Preencher Your Information vazio" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("", "", "")
            
            expect(@checkout.error_label.text).to include("Error: First Name is required")
        end

        it "-> Preencher Your Information sem First Name" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("", "Medeiros", "7897888")
            
            expect(@checkout.error_label.text).to include("Error: First Name is required")
        end

        it "-> Preencher Your Information sem Last Name" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "", "7897888")
            
            expect(@checkout.error_label.text).to include("Error: Last Name is required")
        end

        it "-> Preencher Your Information sem Zipcode" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "Medeiros", "")
            
            expect(@checkout.error_label.text).to include("Error: Postal Code is required")
        end

        it "-> Preencher Your Information" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "Medeiros", "7897888")
            
            expect(@checkout.text_title.text).to include("Checkout: Overview")
        end

    #end


    #Overview

        it "-> Fluxo até o Checkout Overview" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "Medeiros", "7897888")

            expect(@checkout.text_title.text).to include("Checkout: Overview")
            expect(@checkout.btn_cancelOver.text).to include("CANCEL")

        end

    #end


    #Overview

        it "-> Fluxo até o Checkout Overview" do
            @produto.addToCartBackpack()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "Medeiros", "7897888")

            expect(@checkout.text_title.text).to include("Checkout: Overview")
            expect(@checkout.btn_cancelOver.text).to include("CANCEL")
            expect(@checkout.text_itemTotal.float + @checkout.text_tax).to equal (@checkout.text_total)
        end

    #end

    #Dois produtos
        it "-> Fluxo até o Checkout Overview" do
            @produto.addToCartJacket()
            @produto.addToCartOnesie()
            @produto.clicarCarrinho()
            @carrinho.checkout()
            @checkout.fazerYourInfo("Abravanel", "Medeiros", "7897888")

            expect(@checkout.text_itemTotal.float + @checkout.text_tax).to equal (@checkout.text_total)
        end
    #end
    
end