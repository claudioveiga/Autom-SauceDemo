require_relative('./_Base_page.rb')


class CheckoutPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento

            def text_title
                driver.find_element(:css, '#contents_wrapper > div.subheader')
            end


        #Checkout Your Information

            def input_firstName
                driver.find_element(:css, '#first-name')
            end

            def input_lastName
                driver.find_element(:css, '#last-name')
            end

            def input_zipCode
                driver.find_element(:css, '#postal-code')
            end

            def btn_cancelInfo
                driver.find_element(:css, '#checkout_info_container > div > form > div.checkout_buttons > a')
            end

            def btn_continue
                driver.find_element(:css, '#checkout_info_container > div > form > div.checkout_buttons > input')
            end

            def error_label
                driver.find_element(:css, '#checkout_info_container > div > form > h3')
            end

        #end


        #Checkout Overview

            def box_1_card
                driver.find_element(:css, 'div.cart_list > div:nth-child(3)')
            end

            def text_1_qty
                box_1_card.find_element(:css, 'div.summary_quantity')
            end

            def link_1_titulo
                box_1_card.find_element(:css, 'div.inventory_item_name')
            end

            def text_1_desc
                box_1_card.find_element(:css, 'div.inventory_item_desc')
            end

            def text_1_price
                box_1_card.find_element(:css, 'div.inventory_item_price')
            end


            def box_2_card
                driver.find_element(:css, 'div.cart_list > div:nth-child(4)')
            end

            def text_2_qty
                box_2_card.find_element(:css, 'div.summary_quantity')
            end

            def link_2_titulo
                box_2_card.find_element(:css, 'div.inventory_item_name')
            end

            def text_2_desc
                box_2_card.find_element(:css, 'div.inventory_item_desc')
            end

            def text_2_price
                box_2_card.find_element(:css, 'div.inventory_item_price')
            end


            def text_payInfo
                driver.find_element(:css, 'div.summary_info > div:nth-child(2)')
            end

            def text_itemTotal
                driver.find_element(:css, 'div.summary_info > div.summary_subtotal_label')
            end

            def text_tax
                driver.find_element(:css, 'div.summary_info > div.summary_tax_label')
            end

            def text_total
                driver.find_element(:css, 'div.summary_info > div.summary_total_label')
            end


            def btn_cancelOver
                driver.find_element(:css, '#checkout_summary_container > div > div.summary_info > div.cart_footer > a.cart_cancel_link.btn_secondary')
            end

            def btn_finish
                driver.find_element(:css, '#checkout_summary_container > div > div.summary_info > div.cart_footer > a.btn_action.cart_button')
            end

        #end


        #Checkout Finish

            def text_finishOrder
                driver.find_element(:css, '#checkout_complete_container > div')
            end

        #end

        #Preencher Your Information
        
            def fazerYourInfo(first, last, zip)
                input_firstName.send_keys(first)
                input_lastName.send_keys(last)
                input_zipCode.send_keys(zip)
                btn_continue.click()
            end

        #end

        #Pressionar Finish

            def finish()
                btn_finish.click()
            end

        #end

    # end

end


