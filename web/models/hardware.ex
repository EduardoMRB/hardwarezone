defmodule HardwareZone.Hardware do
  use Ecto.Model
  validate hardware, name: present()

  schema "hardwares" do
    field :name, :string
    field :description, :string
    field :manufacturer, :string
    field :sale_contact_number, :string
  end
end
