defmodule HardwareZone.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", HardwareZone.HardwaresController, :index, as: :root
    resources "/hardwares", HardwareZone.HardwaresController
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
