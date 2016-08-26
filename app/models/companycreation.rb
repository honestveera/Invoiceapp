class Companycreation < ActiveRecord::Base
  validates_presence_of :companyname,:on => :index
  validates_uniqueness_of :companyname

      class << self
            def search(cname)
               @search=Companycreation.where("companyname LIKE ?","%#{cname}%")
            end
      end
end
