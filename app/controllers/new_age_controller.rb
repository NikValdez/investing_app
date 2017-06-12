class NewAgeController < ApplicationController
  layout "new_age"

  def index
  	@stock = StockQuote::Stock.quote("spy")

 
  end
end
