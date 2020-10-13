class CreateLunchEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :lunch_entries do |t|
      t.string :date
      t.string :title
      t.string :food_name
      t.string :author

      t.timestamps
    end
  end
end
