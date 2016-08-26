class Customermaster < ActiveRecord::Base
    validates_presence_of  :customername,:customeraddress,:customerfax,:customerphone,:customeremail,:customertin,:customercst
    validates_uniqueness_of :customername,:customertin,:customercst,:customeremail
    validates_numericality_of :customertin,:customercst

    scope :allwhere,->(companyname,username,year){where("companyname=? AND username=? AND year=?",companyname,username,year)}

    ransacker :full_name do |parent|
        Arel::Nodes::InfixOperation.new('||',
        Arel::Nodes::InfixOperation.new('||', parent.table[:customername], ' '),
        parent.table[:customeremail])
    end
end
