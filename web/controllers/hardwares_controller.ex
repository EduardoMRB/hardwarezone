defmodule HardwareZone.HardwaresController do
  use Phoenix.Controller
  alias HardwareZone.Hardware
  alias HardwareZone.Repo
  import HardwareZone.Router.Helpers

  plug :action

  def index(conn, _params) do
    hardwares = HardwareZone.Queries.all_hardwares
    render conn, "index", hardwares: hardwares
  end

  def new(conn, _params) do
    render conn, "new", hardware: %Hardware{}
  end

  def create(conn, %{"hardware" => params}) do
    hardware = Map.merge(%Hardware{}, atomize_keys(params))
    case Hardware.validate(hardware) do
      [] -> 
        hardware = Repo.insert(hardware)
        redirect conn, hardwares_path(:show, hardware.id)
      errors -> 
        render conn, "new", hardware: hardware, errors: errors
    end
  end

  defp atomize_keys(struct) do
    Enum.reduce struct, %{}, fn({k, v}, map) -> Map.put(map, String.to_atom(k), v) end
  end
end
