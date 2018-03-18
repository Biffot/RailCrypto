class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","XRP","ADA","XLM","STEEM","MIOTA","BCH","ETH",]
    @hello="hello me!"
    
  end
  def about
  end
end
