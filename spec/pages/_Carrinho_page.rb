require_relative('./_Base_page.rb')

class CarrinhoPage < BasePage
    attr_accessor :driver
    def initialize(webDriver)
        @driver = webDriver
    end

    # Mapeamento
        # Mapeando itens
        def text_nameItem
        end

        def text_descItem
        end

        def btn_addToCart
        end

        def btn_backToProduct
        end

end