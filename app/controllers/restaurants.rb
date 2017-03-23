get  '/restaurants/new' do
  erb :'restaurants/new'
end


post '/restaurants' do
  @restaurant = Restaurant.new(params[:restaurant])
  @user = current_user.id

  if @restaurant.save
    redirect '/restaurants'
  else
    @errors = @resaurant.errors.full_messages
    erb :'restaurants/new'
  end
end


get '/restaurants' do
  @restaurants = Restaurant.all #define instance variable for view
  erb :'restaurants/index' #show all restaurants view (index)
end


get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id]) #define instance variable for view
  @user = User.find_by(id: @restaurant.user_id)
  @reviews = Review.all
  
  p "*" * 50
  p @restaurant
  p "printing reviews!!!"
  p @reviews
  p "*" * 50
  erb :'restaurants/show' #show single restaurant view
end



get '/restaurants/:id/edit' do

  #get params from url
  @restaurant = Restaurant.find(params[:id]) #define intstance variable for view

  erb :'restaurants/edit' #show edit restaurant view

end



put '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  @restaurant.assign_attributes(params[:restaurant])
  if @restaurant.save
    redirect '/restaurants'
  else
    @errors = @restaurant.errors.full_messages
    erb :'restaurants/edit'
  end
end


delete '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  @restaurant.destroy
  redirect '/restaurants'
end
