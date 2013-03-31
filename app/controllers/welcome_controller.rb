class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    @authors = Author.all
    @comments = Comment.all
  end
end
