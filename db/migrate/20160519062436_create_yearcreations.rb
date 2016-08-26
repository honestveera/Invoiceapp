class CreateYearcreations < ActiveRecord::Migration
  def change
    create_table :yearcreations do |t|
      t.string :year

      t.timestamps null: false
    end
  end
end
