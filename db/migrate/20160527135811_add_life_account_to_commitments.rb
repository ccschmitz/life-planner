class AddLifeAccountToCommitments < ActiveRecord::Migration[5.0]
  def change
    add_reference :commitments, :life_account, foreign_key: true
    remove_column :commitments, :user_id, foreign_key: true
  end
end
