class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
   t = Trainer.all

   t.to_json
  end

  get "/workouts" do
    t = Workout.all
 
    t.to_json
   end

   get "/workouts/:id" do
    t = Workout.find(params[:id])
 
    t.to_json
   end

   get "/exercises" do
    t = Exercise.all
 
    t.to_json
   end

   delete '/workouts/:id' do
    wo = Workout.find(params[:id])
    wo.destroy
    wo.to_json

   end



end
