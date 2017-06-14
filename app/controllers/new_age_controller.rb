class NewAgeController < ApplicationController
  layout "new_age"

  def index
  	@s_p = StockQuote::Stock.quote("spy")
  	@commodities = StockQuote::Stock.quote("dbc")
  	@developed = StockQuote::Stock.quote("vea")
  	@emerging = StockQuote::Stock.quote("vwo")

  end
end
