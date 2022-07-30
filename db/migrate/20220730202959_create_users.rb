class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name
      t.boolean :present

      t.timestamps
    end
  end
end
