class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)
  if @post.save
    flash[:notice] = "Post successfully added!"
    redirect_to  posts_path
  else
    render :new
  end
end

# def vote(post)
#   post.liked_by @user
#   render :index
# end

def upvote
  @post= Post.find(params[:id])
  @post.upvote_by current_user
  @posts = Post.all
  redirect_to :posts
end

def downvote
  @post = Post.find(params[:id])
  @post.downvote_by current_user
  @posts = Post.all
  redirect_to :posts
end

end
