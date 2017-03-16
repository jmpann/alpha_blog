class PostsController < ApplicationController

  before_filter :authorize
  before_action :set_current_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all
    render :index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was successfully created"
      redirect_to @post
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post was successfully updated"
      redirect_to @post
    else
      render :edit
    end
  end

    def destroy
        @post.delete
      flash[:notice] = "Post was successfully deleted"
      redirect_to "/posts"
    end

  private

  def set_current_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
