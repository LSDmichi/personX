defmodule PersonX.PageController do
  use PersonX.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
