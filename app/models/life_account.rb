class LifeAccount < ApplicationRecord
  belongs_to :user
  has_many :commitments

  validates :user, presence: true
  validates :name, presence: true
  validates :purpose_statement, presence: true
  validates :envisioned_future, presence: true
  validates :current_reality, presence: true
end
