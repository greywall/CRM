class Appointment < ActiveRecord::Base
	belongs_to :contacts

	validates :date, presence: true
	validates :time, presence: true
	validates :notes, presence: true
end
