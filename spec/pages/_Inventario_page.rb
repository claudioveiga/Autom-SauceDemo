# #Menu Principal
# btn_menuPrincipal = driver.find_element(:css, '#menu_button_container > div > div:nth-child(3) > div > button')
#     link_allItens = driver.find_element(:id, 'inventory_sidebar_link')
#     link_about = driver.find_element(:id, 'about_sidebar_link')
#     link_logout = driver.find_element(:id, 'logout_sidebar_link')
#     link_resetAppState = driver.find_element(:id, 'reset_sidebar_link')
#     btn_fecharMenu = driver.find_element(:css, '#menu_button_container > div > div.bm-menu-wrap > div:nth-child(2) > div > button')
# btn_carrinho = driver.find_element(:css, '#shopping_cart_container > a > svg > path')

class ProdutosPage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    
end