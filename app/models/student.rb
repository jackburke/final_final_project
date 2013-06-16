class Student < ActiveRecord::Base
  attr_accessible :city, :first_name, :grad_year, :instructor_id, :last_name, :school, :state, :password, :password_confirmation, :password_digest, :email

  belongs_to :instructor

end
