require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name=params[:name]
    revname=@name.reverse
    "#{revname}"
  end

  get '/square/:number' do
    num=params[:number].to_i
    num*num
  end

  get 'say/:number/:phrase' do
    num=params[:number].to_i
    params[:phrase]*num
  end

  get 'say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end
end
