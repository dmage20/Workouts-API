class Api::WorkoutsController < ApplicationController
    def index
        if params[:query].present?
            @workouts = Workout.search_workouts_for_keyword(params["query"])
        else
            @workouts = Workout.all
        end
        render json: @workouts, status: :ok
    end
end
