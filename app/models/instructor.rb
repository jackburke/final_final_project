class Instructor < ActiveRecord::Base
  attr_accessible :city, :first_name, :last_name, :school, :state, :email,:password, :password_confirmation, :password_digest
  validates :city, :first_name, :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  has_many :students
  belongs_to :user
end
