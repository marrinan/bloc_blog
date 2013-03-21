class Post < ActiveRecord::Base
  belongs_to :author
  attr_accessible :author_id, :body, :published_date, :title
end
