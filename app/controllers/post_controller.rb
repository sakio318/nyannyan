class PostController < ApplicationController
  def index
  end

  def new
    @new_post = Post.new


  end

  def create
    new_post = Post.new(post_params)
    new_post.save
    redirect_to '/user/(current_user)'
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, :img)
    end
end
