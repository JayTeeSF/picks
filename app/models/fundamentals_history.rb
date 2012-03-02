class FundamentalsHistory < ActiveRecord::Base
  belongs_to :company

  #http://investing.money.msn.com/investments/key-ratios?symbol=k&page=PriceRatios
  # http://www.dividend.com/dividend-stocks/consumer-goods/processed-and-packaged-goods/k-kellogg-co/
end
