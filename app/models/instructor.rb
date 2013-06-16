class Instructor < ActiveRecord::Base
  attr_accessible :city, :first_name, :last_name, :school, :state, :email,:password, :password_confirmation, :password_digest
# has_many students
  has_secure_password
end
