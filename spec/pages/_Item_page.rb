class ItemPage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
        # Mapeando itens
        def text_nameItem
            driver.find_element(:css, '#inventory_item_container > div > div > div > div.inventory_details_name')
        end

        def text_descItem
            driver.find_element(:css, '#inventory_item_container > div > div > div > div.inventory_details_desc')
        end

        def text_priceItem
            driver.find_element(:css, '#inventory_item_container > div > div > div > div.inventory_details_price')
        end

        def btn_addRemToCart
            driver.find_element(:css, '#inventory_item_container > div > div > div > button')
        end

        def btn_backToProduct
            driver.find_element(:css, '#inventory_item_container > div > button')
        end
        #end
    #end

    def acessarBackpack()
        @produto.acessar_backpack()
    end

    def acessarJacket()
        linkJacket.click()
    end

    def acessarOnesie()
        addToCartBackpack()
    end
end