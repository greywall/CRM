class User < ActiveRecord::Base
	
	has_many :contacts

	has_secure_password

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :password, presence: true
	
end
