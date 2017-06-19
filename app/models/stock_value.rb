class StockValue < ApplicationRecord
	validates :ticker, presence: true
end
