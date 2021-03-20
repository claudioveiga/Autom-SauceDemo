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
    #end

end