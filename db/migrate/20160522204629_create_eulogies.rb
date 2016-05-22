class CreateEulogies < ActiveRecord::Migration[5.0]
  def change
    create_table :eulogies do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
