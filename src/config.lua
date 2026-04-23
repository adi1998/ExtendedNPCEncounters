local config = {
  enabled = true;
  icarus = {
    enabled = true;
    weight = 1;

    erebus = true;
    oceanus = true;
    fields = true;
    tartarus = true;

    ephyra = true;
    ephyra_sideroom = true;

    asphodel = true;
    elysium = true;
  };
  heracles = {
    enabled = true;
    weight = 1;

    erebus = true;
    oceanus = true;
    fields = true;
    tartarus = true;
  };
  artemis = {
    enabled = true;
    weight = 1;

    fields = true;
    tartarus = true;

    thessaly = true;
    olympus = true;

    tartarus_nightmare = true;
    elysium = true;
  };
  nemesis = {
    enabled = true;
    weight = 1;

    ephyra = true;
    thessaly = true;
    olympus = true;

    tartarus_nightmare = true;
    asphodel = true;
    elysium = true;
  };
  thanatos = {
    enabled = true;
    weight = 1;

    erebus = true;
    oceanus = true;
    tartarus = true;
    ephyra = true;
    olympus = true;
  }
}

local configDesc = {
  enabled = "Enable/disable Extended NPC Encounters";
  icarus = {
    enabled = "Enable/disable Extended Icarus Encounters";
    weight = "Weight range: 1-20";

    erebus = "Allow Icarus in Erebus";
    oceanus = "Allow Icarus in Oceanus";
    fields = "Allow Icarus in Fields";
    tartarus = "Allow Icarus in Tartarus";

    ephyra = "Allow Icarus in Ephyra";
    ephyra_sideroom = "Allow Icarus in Ephyra side rooms";

    asphodel = "Allow Icarus in Asphodel";
    elysium = "Allow Icarus in Elysium";
  };
  heracles = {
    enabled = "Enable/disable Extended Heracles Encounters";
    weight = "Weight range: 1-20";

    erebus = "Allow Heracles in Erebus";
    oceanus = "Allow Heracles in Oceanus";
    fields = "Allow Heracles in Fields";
    tartarus = "Allow Heracles in Tartarus";
  };
  artemis = {
    enabled = "Enable/disable Extended Artemis Encounters";
    weight = "Weight range: 1-20";

    fields = "Allow Artemis in Fields";
    tartarus = "Allow Artemis in Tartarus";

    thessaly = "Allow Artemis in Thessaly";
    olympus = "Allow Artemis in Olympus";

    tartarus_nightmare = "Allow Artemis in Tartarus(Nightmare)";
    elysium = "Allow Artemis in Elysium";
  };
  nemesis = {
    enabled = "Enable/disable Extended Nemesis Encounters";
    weight = "Weight range: 1-20";

    ephyra = "Allow Nemesis in Ephyra";
    thessaly = "Allow Nemesis in Thessaly";
    olympus = "Allow Nemesis in Olympus";

    tartarus_nightmare = "Allow Nemesis in Tartarus(Nightmare)";
    asphodel = "Allow Nemesis in Asphodel";
    elysium = "Allow Nemesis in Elysium";
  };
  thanatos = {
    enabled = "Enable/disable Extended Thanatos Encounters";
    weight = "Weight range: 1-20";

    erebus = "Allow Thanatos in Erebus";
    oceanus = "Allow Thanatos in Oceanus";
    tartarus = "Allow Thanatos in Tartarus";

    ephyra = "Allow Thanatos in Ephyra";
    olympus = "Allow Thanatos in Olympus";
  }
}

return config, configDesc