require_relative('./_Base_page.rb')

class CarrinhoPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

        # Mapeando itens
                    
            def text_titulo
                driver.find_element(:css, '#contents_wrapper > div.subheader')
            end

            def text_qty
                driver.find_element(:css, '#cart_contents_container > div > div.cart_list > div.cart_quantity_label')
            end

            def text_desc
                driver.find_element(:css, '#cart_contents_container > div > div.cart_list > div.cart_desc_label')
            end

            def btn_contShop
                driver.find_element(:css, '#cart_contents_container > div > div.cart_footer > a.btn_secondary')
            end

            def btn_checkout
                driver.find_element(:css, '#cart_contents_container > div > div.cart_footer > a.btn_action.checkout_button')
            end

        #end

        # Mapeando item 1
            
            def box_1_card
                driver.find_element(:css, '#cart_contents_container > div > div.cart_list > div.cart_item:nth-child(3)')
            end

            def link_1_titulo
                box_1_card.find_element(:css, 'div.inventory_item_name')
            end

            def text_1_item
                box_1_card.find_element(:css, 'div.cart_quantity')
            end

            def text_1_desc
                box_1_card.find_element(:css, 'div.inventory_item_desc')
            end

            def text_1_price
                box_1_card.find_element(:css, 'div.item_pricebar > div')
            end

            def btn_1_rem
                box_1_card.find_element(:css, 'div.item_pricebar > button')
            end

        #end

        # Mapeando item 2
            
            def box_2_card
                driver.find_element(:css, '#cart_contents_container > div > div.cart_list > div.cart_item:nth-child(4)')
            end

            def link_2_titulo
                box_2_card.find_element(:css, 'div.inventory_item_name')
            end

            def text_2_item
                box_2_card.find_element(:css, 'div.cart_quantity')
            end

            def text_2_desc
                box_2_card.find_element(:css, 'div.inventory_item_desc')
            end

            def text_2_price
                box_2_card.find_element(:css, 'div.item_pricebar > div')
            end

            def btn_2_rem
                box_2_card.find_element(:css, 'div.item_pricebar > button')
            end

        #end

    #end

    # Acessar item 1

        def acessarItem1
            item_1_title_link.click()
        end

    #end

    # Acessar item 2

        def acessarItem2
            item_2_title_link.click()
        end
   
    #end


end