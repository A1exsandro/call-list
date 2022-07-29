class CreateDailyPresences < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_presences do |t|
      t.references :student, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
