class Sector < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :industries
end
