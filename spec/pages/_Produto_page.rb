# #Menu Principal
# btn_menuPrincipal = driver.find_element(:css, '#menu_button_container > div > div:nth-child(3) > div > button')
#     link_allItens = driver.find_element(:id, 'inventory_sidebar_link')
#     link_about = driver.find_element(:id, 'about_sidebar_link')
#     link_logout = driver.find_element(:id, 'logout_sidebar_link')
#     link_resetAppState = driver.find_element(:id, 'reset_sidebar_link')
#     btn_fecharMenu = driver.find_element(:css, '#menu_button_container > div > div.bm-menu-wrap > div:nth-child(2) > div > button')
# btn_carrinho = driver.find_element(:css, '#shopping_cart_container > a > svg > path')

class ProdutoPage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
        #Produtos
            # Link de acesso ao item backpack
            def link_backpack
                driver.find_element(:css, '#item_4_title_link > div')
            end

            # Texto descritivo do item backpack
            def text_descBackpack
                driver.find_element(:css, '#inventory_container > div > div:nth-child(1) > div.inventory_item_label > div')
            end

            # Preço do item backpack
            def text_priceBackpack
                driver.find_element(:css, '#inventory_container > div > div:nth-child(1) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item backpack
            def btn_addRemBackpack
                driver.find_element(:css, '#inventory_container > div > div:nth-child(1) > div.pricebar > button')
            end

            def link_bikeLight
                driver.find_element(:css, '#item_0_title_link > div')
            end
            
            def btn_addBikeLight
                driver.find_element(:css, '#inventory_container > div > div:nth-child(2) > div.pricebar > button')
            end

            def btn_addTshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(3) > div.pricebar > button')
            end

            def btn_addJacket
                driver.find_element(:css, '#inventory_container > div > div:nth-child(4) > div.pricebar > button')
            end

            def btn_addOnesie
                driver.find_element(:css, '#inventory_container > div > div:nth-child(5) > div.pricebar > button')
            end

            def btn_addRedTshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(6) > div.pricebar > button')
            end

            # Clicando na opção de Filtros 
            #e escolhendo uma opção
            def dbox_filterProducts #dbox para indicar um combobox
                driver.find_element(:css, '#inventory_filter_container > select')
            end
                            
            def dbox_aZFilter
                driver.find_element(:css, '[value="az"]')
            end

            def dbox_zAFilter
                driver.find_element(:css, '[value="za"]')
            end

            def dbox_priceLowFilter
                driver.find_element(:css, '[value="lohi"]')
            end

            def dbox_priceHighFilter
                driver.find_element(:css, '[value="hilo"]')
            end
        #end
    # end

    # Metodos
    
        def filterBy(option)
            box_filter.click
            sleep 1
             
            case option
                when "A a Z"
                    dbox_aZFilter.click
    
                when "Z a A"
                    dbox_zAFilter.click
                        
                when "Menor preco"
                    dbox_priceLowFilter.click
    
                when "Maior preco"
                    dbox_priceHighFilter.click
    
                else 
                    puts "Nenhuma opção encontrada"
    
            end
        end

        def addToCartProducts()
            btn_addBackpack.click()
            btn_addJacket.click()
            btn_addOnesie.click()
        end
    
    #end

end
