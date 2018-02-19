defmodule PersonX.Router do
  use PersonX.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PersonX do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/user/register", UserController, :register
    post "/user/login", UserController, :login
    post "/user/home", UserController, :home
    post "/user/delete", UserController, :delete

      ## Follow API
    post "/user/follow", FollowController, :follow
    post "/user/follow/list", FollowController, :list
    post "/user/follow/delete", FollowController, :delete

      ## Follower API
    post "/user/ollower/list", FollowerController, :list
    post "/user/follower/delete", FollowerController, :delete


    post "/user_page/config", PageController, :config
    post "/user_page/config/pass_change", PageController, :pass_change
    post "/user_page/config/theme_change", PageController, :theme_change
    post "/user_page/new", PageController, :new
    post "/user_page/edit", PageController, :edit
    post "/user_page/delete", PageController, :delete

    post "/free_one_access", MiscController, :free_one_access
  end

  # Other scopes may use custom stacks.
  # scope "/api", PersonX do
  #   pipe_through :api
  # end
end
