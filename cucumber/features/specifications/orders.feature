Feature: Customers placing orders

    As a user, I wanna place some orders in Ze Delivery eStore

@order_credito
Scenario: Place an order with an active user using Credito payment type
    Given I have the address and product information
    And I have a valid email "teste@testezava.com" and password "Zava@123"
    When I do login
    And I fill the field with my address
    And I select a product placing the order selecting Credito as payment type
    Then order should be placed    

@order_debito
Scenario: Place an order with an active user using Debito payment type
    Given I have the address and product information
    And I have a valid email "teste@testezava.com" and password "Zava@123"
    When I do login
    And I fill the field with my address
    And I select a product placing the order selecting Debito as payment type
    Then order should be placed 

@order_dinheiro
Scenario: Place an order with an active user using Dinheiro payment type
    Given I have the address and product information
    And I have a valid email "teste@testezava.com" and password "Zava@123"
    When I do login
    And I fill the field with my address
    And I select a product placing the order selecting Dinheiro as payment type
    Then order should be placed

@order_valor_insuficiente
Scenario: Place an order with an active user with insufficient value
    Given I have the address and product information
    And I have a valid email "teste@testezava.com" and password "Zava@123"
    When I do login
    And I fill the field with my address
    And I select a product with below-expected value clicking on Fechar button
    Then message "pelo menos R$ 35,00" should be displayed
