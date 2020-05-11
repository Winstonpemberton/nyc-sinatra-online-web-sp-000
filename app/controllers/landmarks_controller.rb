class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    redirect to "/landmarks/#{@landmark.id}"
  end

  get "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get "/landmarks/:id/edit" do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  patch "/landmarks/:id" do
<<<<<<< HEAD
=======
    binding.pry
>>>>>>> 4c47b2f10b9c07de9cddc9120c5859af03943431
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    redirect to "/landmarks/#{@landmark.id}"
  end
end
