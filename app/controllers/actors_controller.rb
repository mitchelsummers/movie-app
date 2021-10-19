class ActorsController < ApplicationController
  def actor_id_2
    actor_2 = Actor.find_by(id: 2)
    render json: actor_2
  end
  def index
    actors = Actor.all
    render json: actors.as_json
  end
  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end
end
