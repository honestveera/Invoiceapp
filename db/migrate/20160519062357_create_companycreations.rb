class CreateCompanycreations < ActiveRecord::Migration
  def change
    create_table :companycreations do |t|
      t.string :companyname

      t.timestamps null: false
    end
  end
end
