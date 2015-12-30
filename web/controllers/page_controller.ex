defmodule Macaw.PageController do
  use Macaw.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
