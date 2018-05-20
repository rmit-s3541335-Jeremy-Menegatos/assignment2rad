class V0::PostsController < ApplicationController
  def index
      posts = Post.order('created_at DESC');
    render json:{status: 'COMPLETED', message:'Loaded!', data:posts}, status: :ok
                 
     end   
                 
                 def show
                         post = Post.find(params[:id])
                         render json:{status: 'COMPLETED', message:'Loaded!', data:post}, status: :ok
                 end
                 
                def create
                         
                         post = Post.new(post_params)
                if user.save 
                        render json:{status: 'COMPLETED', message:'Saved!', data:post}, status: :ok
                else
                        render json:{status: 'ERROR', message:'Not saved!', data:post.error}, status: :unprocessable_entity
                end
                 
                 def destory
                      post = Post.find(params[:id])    
                       
                       user.destory
                       render json:{status: 'COMPLETED', message:'Eliminated!', data:post}, status: :ok
                 end
                 
                def update
                     post = Post.find(params[:id])     
                if user.update_attributes(post_params)
                              
                 render json:{status: 'COMPLETED', message:'Updated!', data:post}, status: :ok
        else
                 render json:{status: 'ERROR', message:'Not updated!', data:post.error}, status: :unprocessable_entity
                
                end
                end
                 
                 private post_params
                 params.permit(:link, :content)
         
                 
                end
                end
        
