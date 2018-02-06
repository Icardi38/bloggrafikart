class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, flash: {success:  "Article modifié avec succés"}
    else
      render 'edit'
    end
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to posts_path, flash: {success:  "Article créé avec succés"} 
  end

  def destroy
    @post.destroy
    redirect_to posts_path, flash: {success:  "Article supprimé avec succés"}
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
