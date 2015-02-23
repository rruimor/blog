class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "<strong>Success!</strong> The post has been successfully created!"
      redirect_to @post
    else
      flash[:danger] = "<strong>Error</strong> - The post could not be created."
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body))
      flash[:success] = "<strong>Success!</strong> The post has been updated!"
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    flash[:danger] = "<strong>Success!</strong> The post has been successfully deleted."

    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
