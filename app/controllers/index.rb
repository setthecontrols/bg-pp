get '/' do
  @restaurants = Restaurant.all
  erb :'restaurants/index'
end
