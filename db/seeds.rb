# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sectors = Sector.create(
  [
    { :name => 'Utilities'},
    { :name => 'Consumer Goods' }
])
#puts "Sectors: #{sectors.inspect}"
industries = Industry.create(
  [
    { :sector_id => Sector.find_by_name("Utilities").id, :name => 'Utilities' },
    { :sector_id => Sector.find_by_name('Consumer Goods').id, :name => 'Food & Beverage' },
    { :sector_id => Sector.find_by_name('Consumer Goods').id, :name => 'Consumer Non-Durables' }
])
#puts "Industries: #{industries.inspect}"
#alternate_industry_names =
#IndustryAlias.create([{:industry_id, :aka_id}])

#puts "CG sector: #{Sector.find_by_name('Consumer Goods').inspect}"
#puts "F&B industry: #{Industry.find_by_name('Food & Beverage').inspect}"
#puts "F&B industry by sector too: #{Industry.find_by_name_and_sector_id('Food & Beverage', Sector.find_by_name('Consumer Goods').id).inspect}"
companies = Company.create(
  [
    { :name => 'BlackRock',
      :symbol => 'BLK',
      :big_dividends => true,
      :profile => "I believe this is in SF -- where Joseph Nelson (VP) works",
      :investment_blurb => %Q|Rocket-ship success since opening|
    },
    { :name => 'International Business Machines',
      :symbol => 'IBM',
      :big_dividends => true
    },
    { :name => 'ConocoPhillips',
      :symbol => 'COP',
      :profile => "",
      :big_dividends => true,
      :investment_blurb => %Q|warren buffet top-10 list|
    },
    { :name => 'Consolidated Edison',
      :symbol => 'ED',
      :industry_id => Industry.find_by_name_and_sector_id('Utilities', Sector.find_by_name('Utilities').id).id,
      :big_dividends => true,
      :profile => "Consolidated Edison, with a $17 billion market value, owns two regulated utilities: Con Ed of New York and Orange & Rockland. They provide steam, natural gas, and electricity to customers in southeastern New York, including New York City, and parts of New Jersey and Pennsylvania.",
      :investment_blurb => %Q|Its shares are down 5.8% this year, but have a three-year annualized return of 20% and, over 10 years, it's 7.1% annually. Its shares have a 4.18% dividend yield. Analysts give its shares 12 "hold" ratings, six "weak holds," and two "sells." It's expected to earn $3.74 this year and that it will grow by 3% next year.|
    },
    { :name => 'Kellogg',
      :symbol => 'K',
      :industry_id => Industry.find_by_name_and_sector_id('Food & Beverage', Sector.find_by_name('Consumer Goods').id).id,
      :big_dividends => true,
      :profile => "Kellogg, with a market value of $18 billion, is one of the world's largest producers and marketers of cereal, cookies, crackers, and other convenience foods under the brands: Frosted Flakes, Corn Flakes, Rice Krispies, Pop-Tarts, Eggo, Keebler and Morningstar Farms. Its products are sold in more than 180 countries and international sales are about a third of its revenue.",
      :investment_blurb => 'Its shares are up 2.8% and have a three-year annualized return of 12% and, over 10 years, the annual return is 6.4%. Its shares have a 3.31% dividend yield. Analysts give its shares three "buy" ratings, one "buy/hold," 18 "holds," and one "weak hold."'
    },
    { :name => 'Kimberly-Clark',
      :symbol => 'KMB',
      :industry_id => Industry.find_by_name_and_sector_id('Consumer Non-Durables', Sector.find_by_name('Consumer Goods').id).id,
      :big_dividends => true,
      :profile => "Kimberly-Clark, a $28 billion company, is one of the world's largest health and hygiene products makers, selling bathroom tissues, diapers, feminine products and paper towels. Its brands include Kleenex, Scott, Huggies and Kotex. Non-U.S. sales are about 45% of revenue.",
      :investment_blurb => %Q|Its shares are down 3% this year, but have a three-year annualized return of 18% and, over 10 years, it's 4%. They carry a 3.92% dividend yield. Analysts give its shares one "buy" rating, one "buy/hold," 13 "holds," and one "weak hold," according to an S&P survey.|
    },
    { :name => 'Procter & Gamble',
      :symbol => 'PG',
      :industry_id => Industry.find_by_name_and_sector_id('Consumer Non-Durables', Sector.find_by_name('Consumer Goods').id).id,
      :big_dividends => true,
      :profile => %Q|Procter & Gamble, with a market value of $177 billion, is the world's largest consumer-products manufacturer, with a lineup of famous household brands that include: Tide laundry detergent, Charmin toilet paper, Pantene shampoo, Cover Girl cosmetics, Gillette shaving products, and Iams pet food.|,
      :investment_blurb => %Q|Its shares are down 2.7% but have a three-year annualized return of 11.8% and, over 10 years, the average return is 6.6% annually. The stock carries a dividend of 3.26%. Analysts give its shares eight "buy" ratings, six "buy/holds," 10 "holds," and one "weak hold." Those same analysts project earnings of $4.05 per share this year and that they will grow 9% next year.|
    },
    { :name => 'Southern Co',
      :symbol => 'SO',
      :industry_id => Industry.find_by_name_and_sector_id('Utilities', Sector.find_by_name('Utilities').id).id,
      :big_dividends => true,
      :profile => %Q|Southern, one of the most widely held stocks in the U.S., generates and distributes electricity to more than 4.4 million customers in the Southeast. It owns four electric utilities -- in Alabama, Georgia, Florida and Mississippi.|,
      :investment_blurb => %Q|Its shares are down 3.8% this year, but have a three-year annualized return of 18% and, over 10 years, its average annual return is 9%. The stock carries a dividend of 4.29%. S&P has its shares rated "hold," on valuation concerns, but said it expects long-term operating earnings growth of 4% to 7% and that dividends will continue to grow in the range of 3.8% annually. Analysts give its shares two "buy" ratings, one "buy/hold," 15 "holds," three "weak holds," and one "sell."|
    },
    { :name => 'H.J. Heinz',
      :symbol => 'HNZ',
      :industry_id => Industry.find_by_name_and_sector_id('Food & Beverage', Sector.find_by_name('Consumer Goods').id).id,
      :big_dividends => true,
      :profile => %Q|H.J. Heinz, with a $17 billion market value, is an international maker of packaged foods, including ketchup, condiments, sauces, frozen food, soups, beans, pasta meals, and infant nutrition items. International sales account for 60% of its revenue. Heinz reported last Friday that in its fiscal third quarter just ended, sales grew 7% to $2.92 billion and earnings to 88 cents per share, up from 84 cents per share a year ago. The company also said it expects fiscal 2012 earnings of $3.32 to $3.34 per share from continuing operations, excluding special items.|,
      :investment_blurb => %Q|Its shares are down 0.8% this year, but have a three-year annualized return of 21%. Over 10 years, its annual average return is 6%. The stock has a dividend yield of 3.58%. S&P has it rated "strong buy" with a $60 price target, a 12% premium to the current price. Analysts give its shares seven "buy" ratings, three "buy/holds," nine "holds," one "weak hold," and one "sell," according to an S&P survey.|
    },
    { :name => 'Duke Energy',
      :symbol => 'DUK',
      :industry_id => Industry.find_by_name_and_sector_id('Utilities', Sector.find_by_name('Utilities').id).id,
      :big_dividends => true,
      :profile => %Q|Duke, with a $28 billion market value, and already one of the nation's largest multistate holding companies of regulated electric and gas utilities, with operations in the Carolinas, Indiana, Ohio, and Kentucky, is awaiting federal regulatory approval to merge with Progress Energy, as mentioned above. Duke and Progress filed a new merger plan Wednesday, their third attempt to get state and federal approval for the $26 billion deal.|,
      :investment_blurb => %Q|Its shares are down 4% this year, but up an average 20% annually over the past three years and, over 10 years, the average annual return is 4%. Its shares carry a 4.79% dividend yield. S&P says it views the merger as "moderately positive," and that it will cause the earnings per share growth rate to rise to 5% annually. Analysts give its shares one "buy/hold" rating, 17 "holds," and one "weak hold." Those same analysts expect to earn $1.43 per share this year, a 1% increase. Its management recently reaffirmed its 4% to 6% long-term target earnings per share growth rate.|
    },
    { :name => 'Xcel Energy',
      :symbol => 'XEL',
      :big_dividends => true,
      :profile => %Q|Xcel Energy, with a $13 billion market value, has utility operations in eight states, stretching from northern Minnesota to Texas, and it serves 3.4 million electric customers and 2 million natural gas customers. It bought two natural gas power plants in 2010, which should help operating margins given the cheap price of that gas.|,
      :investment_blurb => %Q|Its shares are down 4% this year, but are up 18% annually on average over the past three years. Over 10 years, it's 4.4%. The stock has a 3.93% dividend yield. Analysts give its shares five "buy" ratings, two "buy/holds," 10 "holds," and one "weak hold." It's expected to earn $1.78 per share this year and that will grow by 6% in 2013.|
    },
    { :name => 'Kraft Foods',
      :symbol => 'KFT',
      :industry_id => Industry.find_by_name_and_sector_id('Food & Beverage', Sector.find_by_name('Consumer Goods').id).id,
      :big_dividends => true,
      :profile => %Q|Kraft, with a market value of $67 billion, is the second-largest packaged food company in the world and the biggest in North America. However, the company's management has plans to break it up into a global snacks business and North American grocery brands. Its products include snacks, beverages, cheese, and convenience meats, and its brands include Nabisco, Oscar Mayer, Maxwell House, Jell-O, Chips Ahoy and Kool-Aid.|,
      :investment_blurb => %Q|Its shares are up 3.3% this year and have a 21% annual rate of return over the past three years. Over 10 years, it's 2.4%. The stock has a dividend yield of 3.01%. Analysts give its shares 10 "buy" ratings, four "buy/holds," and six "holds," according to an S&P survey.|
    },
    { :name => 'Pepsi',
      :symbol => 'PEP',
      :big_dividends => true,
      :profile => %Q|beverage and snack seller|
    },
    { :name => "McDonald's",
      :symbol => 'MCD',
      :big_dividends => true,
      :profile => %Q|fast-food chain|
    },
    { :name => 'Wal-Mart',
      :symbol => 'WMT',
      :big_dividends => true,
      :profile => %Q|retailer|
    },
    { :name => 'Eli Lilly',
      :symbol => 'LLY',
      :big_dividends => true,
      :profile => %Q|drug maker|,
    },
    { :name => 'General Mills',
      :symbol => 'GIS',
      :big_dividends => true,
      :profile => %Q|cereal maker|
    },
    { :name => 'Campbell Soup',
      :symbol => 'CPD',
      :big_dividends => true,
      :profile => %Q|soup maker|
    },
    { :name => 'Johnson & Johnson',
      :symbol => 'JNJ',
      :big_dividends => true,
      :profile => %Q|health-care products giant|
    },
    { :name => 'ConAgra',
      :symbol => 'CAG',
      :big_dividends => true,
      :profile => %Q|agriculural-products leader|
    },
    { :name => 'Coca-Cola',
      :symbol => 'KO',
      :big_dividends => true,
      :profile => %Q|beverage conglomerate|
    },
    { :name => 'Abbott Labs',
      :symbol => 'ABT',
      :big_dividends => true,
      :profile => %Q|drug maker|
    },
    { :name => 'Wisconsin Energy',
      :symbol => 'WEC',
      :big_dividends => true,
      :profile => %Q|electic and natural gas utility|
    },
    { :name => 'Bristol-Myers Squibb',
      :symbol => 'BMY',
      :big_dividends => true,
      :profile => %Q|drug company|
    },
])
#    { :name => 'Procter & Gamble',
#      :symbol => 'PG',
#      :big_dividends => true,
#      :profile => %Q||,
#      :investment_blurb => %Q||
#    },

FundamentalsHistory.create(
  { :company_id => Company.find_by_symbol("K").id,
    :pe =>15.48, :industry_pe =>19.4, :mkt_cap =>18.14,
    :avg_vol =>2.22, :annualized_dividend =>1.72, :dividend_yield =>3.29,
    :bid =>nil, :ask =>52.26, :fifty_two_wk_high =>57.7, :fifty_two_wk_low =>48.1, :collected_on => Date.new(2012,3,2)
})

