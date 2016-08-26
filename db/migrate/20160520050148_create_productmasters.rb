class CreateProductmasters < ActiveRecord::Migration
  def change
    create_table :productmasters do |t|
      t.string :productname
      t.string :productqty
      t.string :productamt

      t.timestamps null: false
    end
  end
end
