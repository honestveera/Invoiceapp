class CreateSamplecreations < ActiveRecord::Migration
  def change
    create_table :samplecreations do |t|
      t.string :sample

      t.timestamps null: false
    end
  end
end
