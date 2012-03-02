class Company < ActiveRecord::Base
  validates_uniqueness_of :symbol
  belongs_to :industry
  has_many :fundamentals_histories do
    def latest
      most_recent
    end
  end

  # FIXME: stop breaking the law ...of demeter
  def sector_industry_label
    sector_name = industry.try(:sector).try(:name)
    industry_name = industry.try(:name)
    return "" unless industry_name && sector_name
    "#{sector_name} / #{industry_name}"
  end

  def fundamentals
    fundamentals_histories.most_recent
  end
end
