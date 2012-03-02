class Company < ActiveRecord::Base
  has_many :fundamentals_histories
  validates_uniqueness_of :symbol
end
