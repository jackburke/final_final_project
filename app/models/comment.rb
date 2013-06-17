class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :last_name, :remember_token, :story_id, :user_id
  belongs_to :story
  validates :last_name, :email, :body, :presence => true

end
