class Contact < ActiveRecord::Base

	belongs_to :user 
	has_many :calls
	has_many :appointments

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :phone_number, presence: true
	validates :company, presence: true

end
