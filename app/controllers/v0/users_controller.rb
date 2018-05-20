class V0::UsersController < ApplicationController
   
def index
      posts = User.order('created_at DESC');
    render json:{status: 'COMPLETED', message:'Loaded!', data:posts}, status: :ok
                 
     end   
                 
                 def show
                         post = User.find(params[:id])
                         render json:{status: 'COMPLETED', message:'Loaded!', data:post}, status: :ok
                 end
                 
                def create
                         
                         post = User.new(post_params)
                if user.save 
                        render json:{status: 'COMPLETED', message:'Saved!', data:post}, status: :ok
                else
                        render json:{status: 'ERROR', message:'Not saved!', data:post.error}, status: :unprocessable_entity
                end
                 
                 def destory
                      post = User.find(params[:id])    
                       
                       user.destory
                       render json:{status: 'COMPLETED', message:'Eliminated!', data:post}, status: :ok
                 end
                 
                def update
                     post = User.find(params[:id])     
                if user.update_attributes(user_params)
                              
                 render json:{status: 'COMPLETED', message:'Updated!', data:post}, status: :ok
        else
                 render json:{status: 'ERROR', message:'Not updated!', data:post.error}, status: :unprocessable_entity
                
                end
                end
                 
                 private user_params
                 params.permit(:name, :password)
         
                 
                end
               
        end
