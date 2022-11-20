class ApplicationController < Sinatra::Base

  get '/games' do
   Game.all .to_json
  end
post '/games/new' do
  Game.create
end
delete "/games/:id" do
  deleted = Game.find(params[:id])
  deleted.destroy
  deleted.to_json
end
patch "/games/:id" do 
  updated = Game.find(params[:id])
  updated.update(
    title: params[:title],
    genre: params[:genre],
    price: params[:price],
    platform: params[:platform]
    
  )
  updated.to_json
end
end
