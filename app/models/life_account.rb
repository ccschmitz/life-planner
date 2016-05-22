class LifeAccount < ApplicationRecord
  belongs_to :user
  has_many :commitments
end
