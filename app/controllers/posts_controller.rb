class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def new 
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])                
  end 

  def update 
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to @post                  
  end

  def destroy
  end
  
  private
  def post_params
    params.require(:post).permit(:text)
  end

end
