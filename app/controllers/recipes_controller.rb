get '/recipes' do
  @recipes = Recipe.all
  erb :'/recipes/index'
end

get '/recipes/new' do
  @user = User.find_by(id: session[:id])
  if logged_in?
    erb :'recipes/new'
  else
    redirect '/login'
  end
end

post '/recipes' do
  recipe = Recipe.new(params[:recipe])
  if recipe.save
    redirect "/recipes/#{recipe.id}"
  else
    erb :'/recipes/new'
  end
end

get '/recipes/:id' do
  @recipe = Recipe.find_by(id: params[:id])
  @user = User.find_by(id: session[:id])
  erb :'/recipes/show'
end

delete '/recipes/:id' do
  recipe = Recipe.find(params[:id])
  recipe.destroy
  redirect "/recipes"
end
