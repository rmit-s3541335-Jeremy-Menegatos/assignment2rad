class SessionsController < ApplicationController
    
def create
    user = User.find_by(name:login_params[:name])
   if user && user.authenticate(login_params[:password])
       session[:user_id] = user.id

       redirect_to '/index/homepage'
   else
       flash[:login_errors] =['Invalid username or password. Please ensure you have entered them correctly']
       redirect_to '/users/login'
   end
end

private
def login_params
    params.require(:login).permit(:name, :password)
end

def login
    @login = "test"
end



end
