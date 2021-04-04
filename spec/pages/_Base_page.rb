class BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
    
        def btn_menuPrincipal
            driver.find_element(:css, '#menu_button_container > div > div:nth-child(3) > div > button')
        end

        def link_allItens
            driver.find_element(:id, 'inventory_sidebar_link')
        end

        def link_about
            driver.find_element(:id, 'about_sidebar_link')
        end

        def link_logout
            driver.find_element(:id, 'logout_sidebar_link')
        end

        def link_resetAppState
            driver.find_element(:id, 'reset_sidebar_link')
        end
        
        def btn_fecharMenu
            driver.find_element(:css, '#menu_button_container > div > div.bm-menu-wrap > div:nth-child(2) > div > button')
        end

        def btn_carrinho
            driver.find_element(:css, '#shopping_cart_container > a')
        end

    #end

    def clicarCarrinho()
        btn_carrinho.click()
    end
    
end