require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  get '/piglatinize' do
    @phrase = Piglatinize.new(params[:phrase])
    @phrase.piglatinize
    erb :results
  end
  
end