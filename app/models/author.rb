class Author < ActiveRecord::Base
  attr_accessible :email, :first_name, :institution, :last_name
  has_many :stories
  belongs_to :user
end
