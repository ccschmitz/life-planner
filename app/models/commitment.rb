class Commitment < ApplicationRecord
  belongs_to :life_account
  has_one :user, through: :life_account
end
