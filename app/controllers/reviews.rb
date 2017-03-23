get '/restaurants/:restaurant_id/reviews/new' do
  @restaurant = Restaurant.find(params[:restaurant_id])
  erb :'reviews/new'
end

#attempting to add reviews to show page for restaurant bombed with less than one
#and attempts to account for that by using if else statements failes.  tried
#running .each on @ reviews with more then one review and just showing one
#if there was only one

#posting restaurant review comments now working and i need to go back to javascript
# and ajax.  i willl troubleshoot routes after that.  

post '/restaurants/:restaurant_id' do
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = @restaurant.reviews.new(params[:review])
  p '*' * 40
  if @review.save
    p @review
    redirect "/restaurants/#{@restaurant.id}"
  else
    erb :'reviews/new'
  end

end
