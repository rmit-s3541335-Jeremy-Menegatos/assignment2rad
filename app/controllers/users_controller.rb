class UsersController < ApplicationController
   
 def login
    return unless session[:user_id]
    @current_user = User.find(session[:user_id]).name
 end
  
   def create
   
        user = User.new(user_params)
        if user.save
            
            session[:user_id] = user.id
               redirect_to '/index/homepage'
        else
            flash[:register_error] = user.errors.full_messages
            redirect_to '/users/login'
        end
      
   end
    
    
    private
    def user_params
        params.require(:user).permit(:name, :password)
    end
    
    
end
