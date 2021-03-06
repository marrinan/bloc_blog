class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  attr_accessible :author_id, :body, :published_date, :title
end
