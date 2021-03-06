defmodule IrisWeb.Router do
  use IrisWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
  end

  if Mix.env == :dev do
    forward "/sent_emails", Bamboo.EmailPreviewPlug
  end

  scope "/", IrisWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/dashboard", PageController, :dashboard
    get "/settings", PageController, :settings
    resources "/users", UserController
    resources "/devices", DeviceController

    get "/signup", RegistrationController, :signup
    post "/signup", RegistrationController, :signup

    get "/login", SessionController, :login
    post "/login", SessionController, :login
    get "/logout", SessionController, :logout
  end

  scope "/api", IrisWeb do
     pipe_through :api

    resources "/services", ServiceController, except: [:new, :edit]
    resources "/messages", MessageController
  end
end
