class Productmaster < ActiveRecord::Base
  scope :allwhere,->(companyname,username,year){where("companyname=? AND username=? AND year=?",companyname,username,year)}
  ransacker :full_name do |parent|
      Arel::Nodes::InfixOperation.new('||',
      Arel::Nodes::InfixOperation.new('||', parent.table[:productname], ' '),
      parent.table[:productamt])
  end
end
