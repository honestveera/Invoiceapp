class Yearcreation < ActiveRecord::Base
  validates_presence_of  :year
  validates_uniqueness_of :year
end
