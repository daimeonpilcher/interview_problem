class User < ActiveRecord::Base
  validates :first_name, :last_name, :presence => true
  validates :email, :uniqueness => true, :presence => true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: ': Please ensure a valid email format' }
  validates :social_security_number, :uniqueness => true, :presence => true, format: { with: /\A\d{3}-?\d{2}-?\d{4}\z/ || /\A\d{9}\z/, message: ': Please re-enter the Social Security Number with with or without dashes.' }

end


# 2. The user model must have a first_name, last_name, email, social_security_number
