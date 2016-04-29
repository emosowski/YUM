post '/recipes/:recipe_id/instructions/:id' do
  @recipe = Recipe.find_by(id: params[:recipe_id])
  @instruction = Instruction.find_by(id: params[:id])
  if request.xhr? && @instruction.update_attributes(checked: params[:checked])
  else
    erb :'/recipes/show'
  end
end

get '/instructions/:id' do
  @recipe = Recipe.find_by(id: params[:id])
  @instruction = Instruction.find_by(id: params[:id])
end
