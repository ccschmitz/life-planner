class AddReviewedAtToLifeAccountsAndEulogies < ActiveRecord::Migration[5.0]
  def change
    add_column :life_accounts, :reviewed_at, :datetime
    add_column :eulogies, :reviewed_at, :datetime
  end
end
