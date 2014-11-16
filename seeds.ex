hardwares = [
  %HardwareZone.Hardware{
    name: "MacBook Pro",
    description: "Looks like new, in good condition, used for 1.5 years",
    manufacturer: "Apple",
    sale_contact_number: "912345678"
  },
  %HardwareZone.Hardware{
    name: "Toshiba CB35-B3340 Chromebook 2",
    description: "This is thinner and lighter than its predecessor. Used for 2 years",
    manufacturer: "Toshiba",
    sale_contact_number: "987654321"

  },
  %HardwareZone.Hardware{
    name: "HP Chromebook 11 (Verizon LTE)",
    description: "The design and construction of the laptop still looks good. Used for 1 year",
    manufacturer: "HP",
    sale_contact_number: "998765432"
  }
]

for hardware <- hardwares, do: HardwareZone.Repo.insert(hardware) 
