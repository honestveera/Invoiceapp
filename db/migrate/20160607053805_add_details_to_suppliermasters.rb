class AddDetailsToSuppliermasters < ActiveRecord::Migration
  def change
    add_column :suppliermasters, :companyname, :string
    add_column :suppliermasters, :username, :string
    add_column :suppliermasters, :year, :string
  end
end
