class CreateCustomermasters < ActiveRecord::Migration
  def change
    create_table :customermasters do |t|
      t.string :customername
      t.string :customeraddress
      t.string :customerfax
      t.string :customerphone
      t.string :customeremail
      t.integer :customertin
      t.integer :customercst

      t.timestamps null: false
    end
  end
end
