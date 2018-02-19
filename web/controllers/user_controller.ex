defmodule PersonX.UserController do
  use PersonX.Web, :controller

  def register(conn, _params) do
    render conn, "index.html"
  end

  def login(conn, _params) do
    render conn, "index.html"
  end

  def home(conn, _params) do
    render conn, "index.html"
  end

  def delete(conn, params) do
    render conn, "index.html"
  end
end
