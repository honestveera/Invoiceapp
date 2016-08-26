class Authorizeduser < ActiveRecord::Base
  scope :allwhere,->(companyname,username,year){where("companyname=? AND username=? AND year=?",companyname,username,year)}
end
