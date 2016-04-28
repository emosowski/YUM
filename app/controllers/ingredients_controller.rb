get '/ingredients/:id' do
  @recipe = Recipe.find_by(id: params[:id])
  @ingredient = Ingredient.find_by(id: params[:id])
end

put '/ingredients/:id/edit' do
end
