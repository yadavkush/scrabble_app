class Team < ApplicationRecord
  belongs_to :member
  belongs_to :match
  validates :score, presence: true
  validates :date, presence: true
  validates :member_id, presence: true, uniqueness: { scope: :match_id}
end
