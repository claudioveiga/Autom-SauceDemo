require "selenium-webdriver"
require "pry"
require_relative('./pages/_Login_page.rb')
require_relative('./pages/_Produto_page.rb')
require_relative('./pages/_Item_page.rb')


describe "Pagina de Itens" do

    # Antes de tudo, executar

        before(:each) do
            @driver = Selenium::WebDriver.for(:chrome)
            @login = LoginPage.new(@driver)
            @produto = ProdutoPage.new(@driver)
            @item = ItemPage.new(@driver)

            @driver.navigate.to("https://www.saucedemo.com/")
            @login.fazerLogin("standard_user", "secret_sauce")
            
        end
    
    #end

    # Depois de cada, executar

        after(:each) do
            @driver.quit
        end

    #end

    it "-> Validar os textos da página Item 1" do
        @produto.acessarBackpack()
        expect(@item.text_nameItem.text).to include("Sauce Labs Backpack")
        expect(@item.text_descItem.text).to include("carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.")
        expect(@item.text_priceItem.text).to include("$29.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Validar os textos da página Item 2" do
        @produto.acessarBikeLight()
        expect(@item.text_nameItem.text).to include("Sauce Labs Bike Light")
        expect(@item.text_descItem.text).to include("A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.")
        expect(@item.text_priceItem.text).to include("$9.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Validar os textos da página Item 3" do
        @produto.acessarTShirt()
        expect(@item.text_nameItem.text).to include("Sauce Labs Bolt T-Shirt")
        expect(@item.text_descItem.text).to include("Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.")
        expect(@item.text_priceItem.text).to include("$15.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Validar os textos da página Item 4" do
        @produto.acessarJacket()
        expect(@item.text_nameItem.text).to include("Sauce Labs Fleece Jacket")
        expect(@item.text_descItem.text).to include("It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.")
        expect(@item.text_priceItem.text).to include("$49.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Validar os textos da página Item 5" do
        @produto.acessarOnesie()
        expect(@item.text_nameItem.text).to include("Sauce Labs Onesie")
        expect(@item.text_descItem.text).to include("Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.")
        expect(@item.text_priceItem.text).to include("$7.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Validar os textos da página Item 6" do
        @produto.acessarRedTShirt()
        expect(@item.text_nameItem.text).to include("Test.allTheThings() T-Shirt (Red)")
        expect(@item.text_descItem.text).to include("This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.")
        expect(@item.text_priceItem.text).to include("$15.99")
        expect(@item.btn_addRemToCart.text).to include("ADD TO CART")
        expect(@item.btn_backToProduct.text).to include("BACK TO PRODUCTS")
    end

    it "-> Voltar do Item 1" do
        @produto.acessarBackpack()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Voltar do Item 2" do
        @produto.acessarBikeLight()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Voltar do Item 3" do
        @produto.acessarTShirt()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Voltar do Item 4" do
        @produto.acessarJacket()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Voltar do Item 5" do
        @produto.acessarOnesie()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

    it "-> Voltar do Item 6" do
        @produto.acessarRedTShirt()
        @item.VoltarProduto()
        expect(@produto.text_tituloProduto.text).to include("PRODUCTS")
    end

end