defmodule PersonX.PageController do
  use PersonX.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def config(conn, params) do
    render conn, "index.html"
  end

  def pass_change(conn, params) do
    render conn, "index.html"
  end

  def theme_change(conn, params) do
    render conn, "index.html"
  end

  def new(conn, params) do
    render conn, "index.html"
  end

  def edit(conn, params) do
    render conn, "index.html"
  end

  def delete(conn, params) do
    render conn, "index.html"
  end
end
