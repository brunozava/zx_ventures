Given(/^I have the address and product information$/) do
  order.load
  @address = 'Avenida paulista  '
  @numero = '55'
  @complemento = 'Teste'
  @busca = 'Brahma 269ml - Pack com 15 Unidades'
  @busca_prod_preco_menor = 'Skol 269ml - Unidade'
  @qtd = '2'
end

When(/^I fill the field with my address$/) do
  order.seleciona_endereco(@address, @numero, @complemento)
end

When(/^I select a product placing the order selecting Credito as payment type$/) do
  order.busca_produto(@busca)
  order.seleciona_produto(@qtd)
  sleep(5)
  order.faz_pedido_credito
end

When(/^I select a product placing the order selecting Debito as payment type$/) do
  order.busca_produto(@busca)
  order.seleciona_produto(@qtd)
  sleep(5)
  order.faz_pedido_debito
end

When(/^I select a product placing the order selecting Dinheiro as payment type$/) do
  order.busca_produto(@busca)
  order.seleciona_produto(@qtd)
  sleep(5)
  order.faz_pedido_dinheiro
end

When(/^I select a product with below-expected value clicking on Fechar button$/) do
  order.busca_produto(@busca_prod_preco_menor)
  order.seleciona_produto(@qtd)
end

Then(/^message "([^"]*)" should be displayed$/) do |msg|
  expect(page).to have_content(msg)
end

Then(/^order should be placed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end