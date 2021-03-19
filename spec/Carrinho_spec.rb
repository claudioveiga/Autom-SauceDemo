require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Carrinho_page.rb')


describe "Pagina de Carrinho" do

    # Antes de tudo, executar
        before(:all) do
            @driver = Selenium::WebDriver.for(:chrome)

            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
        end

 # Antes de cada, executar
    before(:each) do
        @driver.navigate.to("https://www.saucedemo.com/")
        @login.fazerLogin("standard_user", "secret_sauce")
        
    end

    # Depois de cada, executar
    after(:each) do
        @driver.quit
    end

    it "-> Fluxo até a página Carrinho" do
        @produto.clicarCarrinho()

        expect(@item.driver.page_source).to include("")
    end

    it "-> Inserir um item no carrinho" do
        @produto.addToCartBackpack()
        @base.btn_carrinho.click()

        expect(@item.driver.page_source).to include("")
        expect(@item.driver.page_source).to include("")
    end

    it "-> Inserir dois item no carrinho" do
        @produto.addToCartJacket()
        @produto.addToCartOnesie()

        expect(@item.driver.page_source).to include("")
        expect(@item.driver.page_source).to include("")
        expect(@item.driver.page_source).to include("")
    end

end