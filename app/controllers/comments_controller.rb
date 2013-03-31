class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    
    if @comment.save
      flash[:notice] = "Saved comment"
      redirect_to @post
    else
      flash[:error] = "Problem saving comment"
      redirect_to @post
    end
  end
end
