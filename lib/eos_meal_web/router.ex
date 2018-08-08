defmodule EosMealWeb.Router do
  use EosMealWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EosMealWeb do
    pipe_through :api
  end
end
