class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])

  # m = Director.find(params[:id])
  # @name = m.name
  # @bio = m.bio
  # @image_url = m.image_url
  # @dob = m.dob
  # @id = m.id
  # render("/directors/show.html.erb")
  end

  def new
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show")



    # m =  Director.find(params[:id])
    # m.name =params[:name]
    # m.bio =params[:bio]
    # m.image_url=params[:image_url]
    # m.dob = params[:dob]
    # m.save
    # redirect_to("http://localhost:3000/directors/"+ params[:id])
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
