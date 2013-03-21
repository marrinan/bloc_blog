class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :comments_posts, class_name: 'Comment', through: :posts

  attr_accessible :bio, :email, :name, :password, :twitter, :website
end
