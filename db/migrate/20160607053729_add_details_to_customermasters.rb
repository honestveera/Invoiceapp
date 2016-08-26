class AddDetailsToCustomermasters < ActiveRecord::Migration
  def change
    add_column :customermasters, :companyname, :string
    add_column :customermasters, :username, :string
    add_column :customermasters, :year, :string
  end
end
