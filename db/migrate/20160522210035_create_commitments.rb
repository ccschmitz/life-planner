class CreateCommitments < ActiveRecord::Migration[5.0]
  def change
    create_table :commitments do |t|
      t.references :user
      t.string :name
      t.date :due_at

      t.timestamps
    end
  end
end
