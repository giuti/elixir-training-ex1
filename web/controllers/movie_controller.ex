defmodule Ex1.MovieController do
  use Ex1.Web, :controller

  alias Ex1.Movies

  def index(conn, _params) do
    render conn, "index.html", movies: Movies.all
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"movie" => movie_params}) do
    Movies.insert(movie_params)
    redirect conn, to: movie_path(conn, :index)
  end
end
