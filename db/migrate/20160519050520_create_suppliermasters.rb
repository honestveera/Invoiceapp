class CreateSuppliermasters < ActiveRecord::Migration
  def change
    create_table :suppliermasters do |t|
      t.string :suppliername
      t.string :supplieraddress
      t.string :supplierfax
      t.string :supplierphone
      t.string :supplieremail
      t.integer :suppliertin
      t.integer :suppliercst

      t.timestamps null: false
    end
  end
end
