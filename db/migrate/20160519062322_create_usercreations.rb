class CreateUsercreations < ActiveRecord::Migration
  def change
    create_table :usercreations do |t|
      t.string :usertype
      t.timestamps null: false
    end
  end
end
