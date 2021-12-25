class Match < ApplicationRecord
	has_many :teams, dependent: :destroy
	accepts_nested_attributes_for :teams ,:allow_destroy => true
	validates :title, presence: true
	validates :start_date, presence: true
end
