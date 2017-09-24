class OrderPage <SitePrism::Page
    set_url '/login'
    element :endereco, 'div input[name=address]'
    element :numero, '#number-address'
    element :complemento, '#complement-address'
    element :continuar_button, '#btn-continue'
    element :buscar_field, '#search-bar'
    element :buscar_button, '#glass-product'
    element :digita_qtd, '.user-text-input-wrapped input[type=tel]'
    element :fecha_conta_button, 'span button[class="transparent-bg font-100 clickable white-font"]'
    elements :pagamento, 'div[class="payment-select-subtitle"]'
    element :finaliza_button, '#bt-buyout'

    def seleciona_endereco(endereco,numero,complemento)
        self.endereco.set endereco
        sleep(2)
        #self.endereco.native.send_key(:backspace)
        #self.endereco.native.send_key(:backspace)
        self.endereco.native.send_key(:arrow_down)
        self.endereco.native.send_key(:enter)
        self.numero.set numero
        self.complemento.set complemento
        sleep(2)
        self.complemento.native.send_key(:tab)
        self.continuar_button.native.send_key(:enter)
        sleep(5)
    end

    def busca_produto(produto)
        self.buscar_field.set produto
        self.buscar_button.click
    end

    def seleciona_produto(qtd)
        self.digita_qtd.set qtd
        sleep(2)
        self.fecha_conta_button.click
    end

    def faz_pedido_credito
        self.pagamento[0].click
        sleep(5)
        #self.finaliza_button.click
    end

    def faz_pedido_debito
        self.pagamento[1].click
        sleep(5)
        #self.finaliza_button.click
    end

    def faz_pedido_dinheiro
        self.pagamento[2].click
        sleep(5)
        #self.finaliza_button.click
    end


end