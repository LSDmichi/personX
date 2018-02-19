defmodule PersonX.FollowerController do
  use PersonX.Web, :controller

  def list(conn, _params) do
    render conn, "index.html"
  end

  def delete(conn, params) do
    render conn, "index.html"
  end
end
