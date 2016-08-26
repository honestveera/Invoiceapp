class CreateAuthorizedusers < ActiveRecord::Migration
  def change
    create_table :authorizedusers do |t|
      t.string :companyname
      t.string :usertype
      t.string :username
      t.string :year

      t.timestamps null: false
    end
  end
end
