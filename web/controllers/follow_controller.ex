defmodule PersonX.FollowController do
  use PersonX.Web, :controller

  def follow(conn, _params) do
    render conn, "index.html"
  end

  def list(conn, _params) do
    render conn, "index.html"
  end

  def delete(conn, params) do
    render conn, "index.html"
  end
end
