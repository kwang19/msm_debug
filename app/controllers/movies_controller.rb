class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save

    render("show")

    # m = Movie.new
    # m.title =params[:title]
    # m.year =params[:year]
    # m.image_url=params[:image_url]
    # m.duration = params[:duration]
    # m.description =  params[:description]
    # m.save
    #
    # redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie =  Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]
    @movie.save
    render("show")
  end

  def destroy
    movie = Movie.find(params[:id])

    movie.destroy
    redirect_to("/movies")
    # m = Movie.find(params[:id]).destroy
    # redirect_to("http://localhost:3000/movies")
  end
end
