class Industry < ActiveRecord::Base
  belongs_to :sector
  has_many :companies
  validates_uniqueness_of :name, :scope => :sector_id
end
