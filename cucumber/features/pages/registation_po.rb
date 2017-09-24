class IdPage <SitePrism::Page
    set_url '/login'
    element :nome, 'input[placeholder=Nome]'
    element :sobrenome, 'input[placeholder=Sobrenome]'
    element :cpf, 'input[placeholder=CPF]'
    element :dtnasc, 'input[placeholder="Data de Nascimento"]'
    element :tel, 'input[placeholder=Telefone]' 
    element :email, 'input[placeholder=Email]'
    element :email2, 'input[placeholder="Repita o seu email"]'
    element :senha, 'input[placeholder=Senha]'
    element :salvar, 'button[type=submit]'
    element :fazer_cadastro, 'div span button[type=button]'
    element :email_existente, 'div input[placeholder=Email]'
    element :senha_existente, 'div input[placeholder=Senha]'
    element :botao_entrar, 'button[type=submit]'

    
    def salva_conta(customer)
        sleep(2)
        self.fazer_cadastro.click
        self.nome.set customer.nome
        self.sobrenome.set customer.sobrenome
        self.cpf.set customer.cpf
        self.dtnasc.set customer.dtnasc
        self.tel.set customer.tel
        self.email.set customer.email
        self.email2.set customer.email2
        self.senha.set customer.senha
        self.salvar.click
    end

    def logar(email,senha)
        sleep(2)
        self.email_existente.set email
        self.senha_existente.set senha
        self.botao_entrar.click
    end

  
end