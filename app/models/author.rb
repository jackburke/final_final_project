class Author < ActiveRecord::Base
  attr_accessible :email, :first_name, :institution, :last_name
end