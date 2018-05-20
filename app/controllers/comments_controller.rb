class CommentsController < ApplicationController
    before_action :find_post
    
    def index
        @comment = Comment.all
    end
    
    def create
   
	   @comment = @post.comments.create(params[:comment].permit(:comment))
	   @comment.save
	   
	      if @comment.save
	   redirect_to post_path(@post)
	   else
	       redirect_to '/index/homepage'
	   end
	   
	
    end


    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end
    
    private
     def find_post
        
        @post = Post.find(params[:post_id])
    
    
    
end
    
    def comment_params
        #params.require(:comment).permit(:comment)  
    end
end
    
