class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    render :comments
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @post.save
      redirect_to post_path(@comment.post)
    else
      render :new
    end

private
  def comment_params
    params.require(:comment).permit(:comment, :post_id)
  end
end
