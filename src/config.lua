local function checkZagConfigDisabled()
  return not (
    zj and zj.IsModEnabledAndInstallationValid and
    zj.IsModEnabledAndInstallationValid() and
    config.zags_journey_integration
  )
end

local config_default = {
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

    tartarus_nightmare = true;
    asphodel = true;
    elysium = true;
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
  };
  athena = {
    enabled = true;
    weight = 1;

    erebus = true;
    oceanus = true;
    tartarus = true;

    ephyra = true;
    -- thessaly = true;

    tartarus_nightmare = true;
    asphodel = true;
    elysium = true;
  };
  zags_journey_integration = true;
  dream_dive_only = false;
}

local configDesc = {
  enabled = {
    order = 1,
    description = "Enable/disable Extended NPC Encounters";
    editableContext = "mainMenu"
  },
  icarus = {
    enabled = {
      description = "Enable/disable Extended Icarus Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      min = 1;
      max = 20;
      step = 1;
      order = 2,
      editableContext = "mainMenu",
    },

    erebus = {
      description = "Allow Icarus in Erebus";
      order = 3
    },
    oceanus = {
      description = "Allow Icarus in Oceanus";
      order = 4
    },
    fields = {
      description = "Allow Icarus in Fields";
      order = 5
    },
    tartarus = {
      description = "Allow Icarus in Tartarus";
      order = 6
    },

    ephyra = {
      description = "Allow Icarus in Ephyra";
      order = 7
    },
    ephyra_sideroom = {
      description = "Allow Icarus in Ephyra side rooms";
      order = 8
    },

    asphodel = {
      description = "Allow Icarus in Asphodel";
      order = 9,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    elysium = {
      description = "Allow Icarus in Elysium";
      order = 10,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
  };
  heracles = {
    enabled = {
      description = "Enable/disable Extended Heracles Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      order = 2,
      min = 1;
      max = 20;
      step = 1;
      editableContext = "mainMenu",
    },

    erebus = {
      description = "Allow Heracles in Erebus";
      order = 3
    },
    oceanus = {
      description = "Allow Heracles in Oceanus";
      order = 4
    },
    fields = {
      description = "Allow Heracles in Fields";
      order = 5
    },
    tartarus = {
      description = "Allow Heracles in Tartarus";
      order = 6
    },

    tartarus_nightmare = {
      displayName = "Tartarus(Nightmare)",
      description = "Allow Heracles in Tartarus(Nightmare)";
      order = 7,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    asphodel = {
      description = "Allow Heracles in Asphodel";
      order = 8,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    elysium = {
      description = "Allow Heracles in Elysium";
      order = 9,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
  };
  artemis = {
    enabled = {
      description = "Enable/disable Extended Artemis Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      order = 2,
      min = 1;
      max = 20;
      step = 1;
      editableContext = "mainMenu",
    },

    fields = {
      description = "Allow Artemis in Fields";
      order = 3,
    },
    tartarus = {
      description = "Allow Artemis in Tartarus";
      order = 4,
    },

    thessaly = {
      description = "Allow Artemis in Thessaly";
      order = 5,
    },
    olympus = {
      description = "Allow Artemis in Olympus";
      order = 6,
    },

    tartarus_nightmare = {
      displayName = "Tartarus(Nightmare)",
      description = "Allow Artemis in Tartarus(Nightmare)";
      order = 7,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    elysium = {
      description = "Allow Heracles in Elysium";
      order = 8,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
  };
  nemesis = {
    enabled = {
      description = "Enable/disable Extended Nemesis Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      order = 2,
      min = 1;
      max = 20;
      step = 1;
      editableContext = "mainMenu",
    },

    ephyra = {
      description = "Allow Nemesis in Ephyra";
      order = 3,
    },
    thessaly = {
      description = "Allow Nemesis in Thessaly";
      order = 4,
    },
    olympus = {
      description = "Allow Nemesis in Olympus";
      order = 5,
    },

    tartarus_nightmare = {
      displayName = "Tartarus(Nightmare)",
      description = "Allow Nemesis in Tartarus(Nightmare)";
      order = 6,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    asphodel = {
      description = "Allow Nemesis in Asphodel";
      order = 8,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
    elysium = {
      description = "Allow Nemesis in Elysium";
      order = 8,
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
    },
  };
  athena = {
    enabled = {
      description = "Enable/disable Extended Athena Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      order = 2,
      min = 1;
      max = 20;
      step = 1;
      editableContext = "mainMenu",
    },

    erebus = {
      description = "Allow Athena in Erebus";
      order = 3,
    },
    oceanus = {
      description = "Allow Athena in Oceanus";
      order = 4,
    },
    tartarus = {
      description = "Allow Athena in Tartarus";
      order = 5,
    },

    ephyra = {
      description = "Allow Athena in Erebus";
      order = 6,
    },
    -- thessaly = "Allow Athena in Thessaly";

    tartarus_nightmare = {
      displayName = "Tartarus(Nightmare)",
      description = "Allow Athena in Tartarus(Nightmare)";
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
      order = 7,
    },
    asphodel = {
      description = "Allow Athena in Asphodel";
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
      order = 8,
    },
    elysium = {
      description = "Allow Athena in Elysium";
      disabled = checkZagConfigDisabled,
      disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",
      order = 9,
    },
  };
  thanatos = {
    enabled = {
      description = "Enable/disable Extended Thanatos Encounters";
      order = 1,
      editableContext = "mainMenu",
    },
    weight = {
      description = "Weight range: 1-20";
      order = 2,
      min = 1;
      max = 20;
      step = 1;
      editableContext = "mainMenu",
    },

    disabled = checkZagConfigDisabled,
    disabledDescription = "Zagreus' Journey integration is disabled or unvailable.",

    erebus = "Allow Thanatos in Erebus";
    oceanus = "Allow Thanatos in Oceanus";
    tartarus = "Allow Thanatos in Tartarus";

    ephyra = "Allow Thanatos in Ephyra";
    olympus = "Allow Thanatos in Olympus";
  };

  zags_journey_integration = {
    order = 3,
    description = "Enable/Disable Zagreus' Journey integration";
    displayName = "Zagreus' Journey integration";
    editableContext = "mainMenu",
    disabled = function()
      return not (zj and zj.IsModEnabledAndInstallationValid and zj.IsModEnabledAndInstallationValid())
    end,
    disabledDescription = "Valid Zagreus' Journey install not found.",
  },
  dream_dive_only = {
    order = 2,
    description = "Allow new encounters in Dream Dives only";
  }
}

return config_default, configDesc