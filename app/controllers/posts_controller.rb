class PostsController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
    end
  end
  def show
  @post = Post.find(params[:id])
  @comment = Comment.find(params[:id])
  authorize @comment
  @comments = @post.comments
  end

  def create
    @post = Post.create(:message => params[:message])
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_path }
      else
        flash[:notice] = "Message failed to save."
        format.html { redirect_to posts_path }
      end
    end
  end
end
