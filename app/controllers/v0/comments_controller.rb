class V0::CommentsController < ApplicationController
    
def index
      posts = Comment.order('created_at DESC');
    render json:{status: 'COMPLETED', message:'Loaded!', data:posts}, status: :ok
                 
     end   
                 
                 def show
                         post = Comment.find(params[:id])
                         render json:{status: 'COMPLETED', message:'Loaded!', data:post}, status: :ok
                 end
                 
                def create
                         
                         post = Comment.new(post_params)
                if user.save 
                        render json:{status: 'COMPLETED', message:'Saved!', data:post}, status: :ok
                else
                        render json:{status: 'ERROR', message:'Not saved!', data:post.error}, status: :unprocessable_entity
                end
                 
                 def destory
                      post = Comment.find(params[:id])    
                       
                       user.destory
                       render json:{status: 'COMPLETED', message:'Eliminated!', data:post}, status: :ok
                 end
                 
                def update
                     post = Comment.find(params[:id])     
                if user.update_attributes(user_params)
                              
                 render json:{status: 'COMPLETED', message:'Updated!', data:post}, status: :ok
        else
                 render json:{status: 'ERROR', message:'Not updated!', data:post.error}, status: :unprocessable_entity
                
                end
                end
                 
                 private user_params
                 params.permit(:comment)
         
                 
                end
               
        end