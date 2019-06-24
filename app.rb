require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number.square
    @number.to_s
  end
end