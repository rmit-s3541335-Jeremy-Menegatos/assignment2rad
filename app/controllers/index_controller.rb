class IndexController < ApplicationController
  
  def homepage
    @message = "This is a homepage"
    @posts =  Post.all.order("created_at DESC")
  end
 
  def newcomments
    @posts =  Post.all.order("created_at DESC")
    @comments = Comment.all
  end
    
    def submit
    end
    
    def login
       
    end
      def api
       
            api = User.order('created_at DESC');
            render json: {status: 'SUCCESS', message:'Loaded', data:api},status: :ok
        end
     
end
