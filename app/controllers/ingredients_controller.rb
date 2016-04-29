post '/recipes/:recipe_id/ingredients/:id' do
  @recipe = Recipe.find_by(id: params[:recipe_id])
  @ingredient = Ingredient.find_by(id: params[:id])
  if request.xhr? && @ingredient.update_attributes(checked: params[:checked])
  else
    erb :'/recipes/show'
  end
end

get '/ingredients/:id' do
  @recipe = Recipe.find_by(id: params[:id])
  @ingredient = Ingredient.find_by(id: params[:id])
end

# put '/ingredients/:id/edit' do
#   @recipe = Recipe.find_by(id: params[:id])
#   @ingredient = Ingredient.find_by(id: params[:id])
#   @ingredient.update_attributes(checked: params[:checked])
#   if @ingredient.save && logged_in?
#     redirect "/recipes/#{@recipe.id}"
#   else
#     redirect '/recipes'
#   end
# end



# post '/restaurants/:id/reviews' do
#  @review = Review.new(params[:review])
#  @restaurant = Restaurant.find_by(id: params[:id])
#  if @review.save && logged_in?
#    redirect "/restaurants/#{@restaurant.id}"
#  else
#    erb :'/restaurants/show'
#  end
# end
