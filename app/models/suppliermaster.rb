class Suppliermaster < ActiveRecord::Base
  validates_presence_of  :suppliername,:supplieraddress,:supplierfax,:supplierphone,:supplieremail,:suppliertin,:suppliercst
  validates_uniqueness_of :suppliername,:suppliertin,:suppliercst,:supplieremail
  validates_numericality_of :suppliertin,:suppliercst
  scope :allwhere,->(companyname,username,year){where("companyname=? AND username=? AND year=?",companyname,username,year)}
  ransacker :full_name do |parent|
      Arel::Nodes::InfixOperation.new('||',
      Arel::Nodes::InfixOperation.new('||', parent.table[:suppliername], ' '),
      parent.table[:supplieremail])
   end
end
