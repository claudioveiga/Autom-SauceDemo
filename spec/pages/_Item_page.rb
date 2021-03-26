require_relative('./_Base_page.rb')

class ItemPage < BasePage
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

    # Pressionar botão voltar

        def VoltarProduto
            btn_backToProduct.click()
        end
        
    #end


    
end