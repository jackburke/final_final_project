class Story < ActiveRecord::Base
  attr_accessible :author_id, :body, :synopsis, :title
  belongs_to :author
  has_many :comments
end
