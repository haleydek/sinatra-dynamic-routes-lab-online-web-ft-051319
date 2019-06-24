require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = (params[:number].to_i)**2
    @number.to_s
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    @words = word1 + word2 + word3 + word4 + word5
    "#{@words}."
  end
end