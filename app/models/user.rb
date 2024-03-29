class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :password_digest
  has_secure_password
  validates :email, :uniqueness => true,
                    :length => {:within => 5..50},
                    :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  before_save {|user| user.email = email.downcase}
  before_save :create_remember_token
  has_one :student
  has_one :instructor
  has_one :author
private
   def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end
end
