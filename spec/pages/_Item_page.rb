class ItemPage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
        #Itens
            def btn_backpack
                driver.find_element(:css, '#inventory_container > div > div:nth-child(1) > div.pricebar > button')
            end

            def btn_bikeLight
                driver.find_element(:css, '#inventory_container > div > div:nth-child(2) > div.pricebar > button')
            end

            def btn_tshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(3) > div.pricebar > button')
            end

            def btn_jacket
                driver.find_element(:css, '#inventory_container > div > div:nth-child(4) > div.pricebar > button')
            end

            def btn_onesie
                driver.find_element(:css, '#inventory_container > div > div:nth-child(5) > div.pricebar > button')
            end

            def btn_redTshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(6) > div.pricebar > button')
            end
        #end
    # end

    def addToCartProducts()
        btn_backpack.click()
        btn_jacket.click()
        btn_onesie.click()
    end
end


