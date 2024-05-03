class DirectorsController < ApplicationController
  # GET /directors
  # Display all directors
  def index
    @directors = Director.all
    render({ :template => "director_templates/list" })
  end

  # GET /directors/:the_id
  # Show details for a specific director by ID
  def show
    the_id = params.fetch("director_id")
    @the_director = Director.where({:id => the_id}).at(0)
    render({ :template => "director_templates/details" })
  end

  # GET /directors/youngest
  # Display the youngest director
  def youngest
    @director = Director.where.not(dob: nil).order(dob: :desc).first
    render({ :template => "director_templates/youngest" })
  end

  # GET /directors/oldest
  # Display the oldest director
  def eldest
    @director = Director.all.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)

    render({ :template => "director_templates/eldest" })
  end
  
end
