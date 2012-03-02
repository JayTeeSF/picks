class FundamentalsHistory < ActiveRecord::Base
  belongs_to :company

  def self.most_recent
    order("created_at desc").first
  end

  #http://investing.money.msn.com/investments/key-ratios?symbol=k&page=PriceRatios
  # http://www.dividend.com/dividend-stocks/consumer-goods/processed-and-packaged-goods/k-kellogg-co/
  # http://stockpickr.com/thestreet-portfolios-2/portfolio/10-stocks-that-will-let-you-retire/fundamentals/
end
