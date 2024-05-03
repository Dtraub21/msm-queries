class CharactersController < ApplicationController
  def index
    render({ :template => "character_templates/list" })
  def show
    the_id = params.fetch("the_id")
    matching_records = Character.where({ :id => the_id })
    @the_character = matching_records.at(0)
    render({ :template => "character_templates/details" })
  end
end
