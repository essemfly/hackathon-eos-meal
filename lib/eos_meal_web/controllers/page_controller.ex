defmodule EosMealWeb.PageController do
  use EosMealWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
