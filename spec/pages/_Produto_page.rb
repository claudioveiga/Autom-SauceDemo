require_relative('./_Base_page.rb')

class ProdutoPage < BasePage
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


            # Link de acesso ao item Bike Light
            def link_bikeLight
                driver.find_element(:css, '#item_0_title_link > div')
            end

            # Texto descritivo do item Bike Light
            def text_descbikeLight
                driver.find_element(:css, '#inventory_container > div > div:nth-child(2) > div.inventory_item_label > div')
            end

            # Preço do item Bike Light
            def text_priceBikeLight
                driver.find_element(:css, '#inventory_container > div > div:nth-child(2) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item Bike Light
            def btn_addRemBikeLight
                driver.find_element(:css, '#inventory_container > div > div:nth-child(2) > div.pricebar > button')
            end

            
            # Link de acesso ao item Bolt T-Shirt
            def link_tShirt
                driver.find_element(:css, '#item_1_title_link > div')
            end

            # Texto descritivo do item T-Shirt
            def text_descTShirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(3) > div.inventory_item_label > div')
            end

            # Preço do item T-Shirt
            def text_priceTShirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(3) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item T-Shirt
            def btn_addRemTShirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(3) > div.pricebar > button')
            end


            # Link de acesso ao item Jacket
            def link_jacket
                driver.find_element(:css, '#item_5_title_link > div')
            end

            # Texto descritivo do item Jacket
            def text_descJacket
                driver.find_element(:css, '#inventory_container > div > div:nth-child(4) > div.inventory_item_label > div')
            end

            # Preço do item Jacket
            def text_priceJacket
                driver.find_element(:css, '#inventory_container > div > div:nth-child(4) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item Jacket
            def btn_addRemJacket
                driver.find_element(:css, '#inventory_container > div > div:nth-child(4) > div.pricebar > button')
            end


            # Link de acesso ao item Onesie
            def link_onesie
                driver.find_element(:css, '#item_2_title_link > div')
            end

            # Texto descritivo do item Onesie
            def text_descOnesie
                driver.find_element(:css, '#inventory_container > div > div:nth-child(5) > div.inventory_item_label > div')
            end

            # Preço do item Onesie
            def text_priceOnesie
                driver.find_element(:css, '#inventory_container > div > div:nth-child(5) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item Onesie
            def btn_addRemOnesie
                driver.find_element(:css, '#inventory_container > div > div:nth-child(5) > div.pricebar > button')
            end


            # Link de acesso ao item Red T-shirt
            def link_redTshirt
                driver.find_element(:css, '#item_3_title_link > div')
            end

            # Texto descritivo do item Red T-shirt
            def text_descRedTshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(6) > div.inventory_item_label > div')
            end

            # Preço do item Red T-shirt
            def text_priceRedTshirt
                driver.find_element(:css, '#inventory_container > div > div:nth-child(6) > div.pricebar > div')
            end

            # Botão de adicionar/ remover do item Red T-shirt
            def btn_addRemRedTshirt
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

    # Adicionando os itens
        def addToCartBackpack()
            btn_addBackpack.click()
        end

        def addToCartJacket()
            btn_addJacket.click()
        end

        def addToCartOnesie()
            btn_addOnesie.click()
        end

    #end

    #Acessando os itens
        def acessarBackpack()
            link_backpack.click()
        end

        def acessarJacket()
            link_jacket.click()
        end

        def acessarOnesie()
            link_onesie.click()
        end
    #end


end
