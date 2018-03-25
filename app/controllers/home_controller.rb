class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC","XRP","ADA","XLM","STEEM","MIOTA","BCH","ETH","USDT","NEO","XEM","TRX","ETC","BTG","BTCD","SRN",]
    @hello="hello me!"
    
  end
  
  def about
    
  end
 
   def lookup
         require 'net/http'
    require 'json'
    
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coins = JSON.parse(@response)
  
   
     
   @symbol = params[:sym]
   end
   
   if @symbol
     @symbol = @symbol.upcase
   end
   
   if @symbol == ""
     @symbol =      "PS you forgot to write a crypto currency>!!!!!!!!!!"
     
     #ok hi
   end
end
