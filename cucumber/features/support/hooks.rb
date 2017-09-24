#Before do
    #@login = LoginPage.new
    #@mainPage = MainPage.new
    #@customer = CustomerPage.new
#end

Before ('@place_order') do
    #@mainPage.do_logout
    @idPage.login_existent_account
end