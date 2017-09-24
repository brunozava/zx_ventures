#Before do
    #@login = LoginPage.new
    #@mainPage = MainPage.new
    #@customer = CustomerPage.new
#end

After ('@logout') do
    @idPage.logout
end