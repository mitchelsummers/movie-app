class ActorsController < ApplicationController
  def actor_id_2
    actor_2 = Actor.find_by(id: 2)
    render json: actor_2
  end
end
