class AddDetailsToProductmasters < ActiveRecord::Migration
  def change
    add_column :productmasters, :companyname, :string
    add_column :productmasters, :username, :string
    add_column :productmasters, :year, :string
  end
end
