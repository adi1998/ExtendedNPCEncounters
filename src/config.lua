local config = {
  enabled = true;
  icarus = {
    enabled = true;

    erebus = true;
    oceanus = true;
    fields = true;
    tartarus = true;
    ephyra = true;
  };
  heracles = {
    enabled = true;

    erebus = true;
    oceanus = true;
    fields = true;
    tartarus = true;
  };
  artemis = {
    enabled = true;

    erebus = true;
    oceanus = true;
    fields = true;
    tartarus = true;
    thessaly = true;
    olympus = true;
  };
  nemesis = {
    enabled = true;
    ephyra = true;
  }
}

local configDesc = {
  enabled = "Enable/disable Extended NPC Encounters";
  icarus = {
    enabled = "Enable/disable Extended Icarus Encounters";

    erebus = "Allow Icarus in Erebus";
    oceanus = "Allow Icarus in Oceanus";
    fields = "Allow Icarus in Fields";
    tartarus = "Allow Icarus in Tartarus";
    ephyra = "Allow Icarus in Ephyra";
  };
  heracles = {
    enabled = "Enable/disable Extended Heracles Encounters";

    erebus = "Allow Heracles in Erebus";
    oceanus = "Allow Heracles in Oceanus";
    fields = "Allow Heracles in Fields";
    tartarus = "Allow Heracles in Tartarus";
  };
  artemis = {
    enabled = "Enable/disable Extended Artemis Encounters";

    erebus = "Allow Artemis in Erebus";
    oceanus = "Allow Artemis in Oceanus";
    fields = "Allow Artemis in Fields";
    tartarus = "Allow Artemis in Tartarus";
    thessaly = "Allow Artemis in Thessaly";
    olympus = "Allow Artemis in Olympus";
  };
  nemesis = {
    enabled = "Enable/disable Extended Nemesis Encounters";

    ephyra = "Allow Nemesis in Ephyra";
  }
}

return config, configDesc