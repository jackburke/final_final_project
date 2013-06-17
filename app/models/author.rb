class Author < ActiveRecord::Base
  attr_accessible :email, :first_name, :institution, :last_name
  has_many :stories
  belongs_to :user

  def contribution
    return Story.where(:author_id => self.id)
  end
end
