class Member < ApplicationRecord
	has_many :teams, dependent: :destroy
	validates :name, presence: true
	validates :contact_number, presence: true
	validates :joining_date, presence: true
end
