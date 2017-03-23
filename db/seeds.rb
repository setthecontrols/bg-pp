User.destroy_all
Restaurant.destroy_all
Review.destroy_all


users = []
20.times do
  users << User.create(user_name: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end


restaurants = []
5.times do
  restaurants << Restaurant.create(name: Faker::Company.name, cuisine: Faker::Company.name, address: "555 Main St", city: "Oakland", state: "CA", zip_code: "94610", user_id: rand(1..users.count))
end



15.times do
  Review.create(review_text: "this is totally a restaurant.  they have food. ", restaurant_id: rand(1..restaurants.count), reviewer_id: rand(1..users.count))
end
