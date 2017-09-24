Given(/^access registration page$/) do
    idPage.load
end
  
Given(/^I have the all mandatory information$/) do
    @email = Faker::Internet.free_email
    @new_customer = OpenStruct.new(
        :nome => Faker::Name.first_name,
        :sobrenome => Faker::Name.last_name,
        :cpf => Faker::CPF.numeric,
        :dtnasc => '28021987',
        :tel => '11992286060',
        :email => @email,
        :email2 => @email,
        :senha => 'zava123456'
    )
end
  
When(/^I register in Website$/) do
    idPage.salva_conta(@new_customer)
    sleep(10)
end
  
 Then(/^My account should be created correctly$/) do
    expect(nav.welcome_message.text).to have_content "OLÁ,"
end

Given(/^I have a valid email "([^"]*)" and password "([^"]*)"$/) do |user, pwd|
    @user = user
    @senha = pwd
end
  
When(/^I do login$/) do
    idPage.logar(@user, @senha)
end
  
Then(/^I should see the message "([^"]*)"$/) do |message|
    @expected_message = message
    expect(nav.welcome_message.text).to have_content @expected_message
end                                                                            
                                                                                  