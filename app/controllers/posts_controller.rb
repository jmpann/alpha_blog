class PostsController < ApplicationController

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
    @post.user = current_user
    if @post.save
      flash[:sucess] = "Post was successfully created"
      redirect_to post_path(@post)
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
      flash[:success] = "Post was successfully updated"
      redirect_to @post
    else
      render :edit
    end
  end

    def destroy
        @post.delete
      flash[:danger] = "Post was successfully deleted"
      redirect_to "/posts"
    end

  private

  def set_current_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, category_ids: [])
  end

end
