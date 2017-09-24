Feature: Customer registration

    As a user, I wanna create a new account in Ze Delivery or log in - log out eStore

    Background:
    * access registration page
    
@new_account
    Scenario: Create a new account without social
        Given I have the all mandatory information 
        When I register in Website
        Then My account should be created correctly

@login_existent_account
    Scenario: Login Ze Delivery
        Given I have a valid email "teste@testezava.com" and password "Zava@123"
        When I do login
        Then I should see the message "OLÁ, TESTE"