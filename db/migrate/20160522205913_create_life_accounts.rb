class CreateLifeAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :life_accounts do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :purpose_statement
      t.text :envisioned_future
      t.text :current_reality

      t.timestamps
    end
  end
end
