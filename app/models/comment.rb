class Comment < ActiveRecord::Base
  belongs_to :author
  belongs_to :post
  attr_accessible :author_id, :comment, :email, :name, :post_id, :website
end
