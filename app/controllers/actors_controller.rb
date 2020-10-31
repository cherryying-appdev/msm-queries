class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_details
    # params looks like {"an_id" => "42"}
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({ :id => the_id }).at(0)
    @the_character = Character.where({ :actor_id => @the_actor.id }).at(0)
    @filmography = Movie.where({ :id => @the_character.movie_id })
    render({ :template => "actor_templates/show.html.erb"})
  end

end