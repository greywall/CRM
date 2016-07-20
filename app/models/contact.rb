class Contact < ActiveRecord::Base

	belongs_to :user 

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :phone_number, presence: true
	validates :company, presence: true

end
