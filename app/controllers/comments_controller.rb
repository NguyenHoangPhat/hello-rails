class CommentsController < ApplicationController
	def create
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.create(comment_params)
	    redirect_to Post_path(@Post)
	end

	def destroy
	    @post = Post.find(params[:post_id])
	    @comment = @post.comments.find(params[:id])
	    @comment.destroy
	    redirect_to post_path(@post)
 	 end
 
private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
