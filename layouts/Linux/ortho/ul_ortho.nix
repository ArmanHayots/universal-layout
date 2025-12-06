{ ... }: {
  services.xserver = {
    # Есть баг, что при первом билде лайаут недоступен. Вроде уже пофикили, но...
    # Решение: сначала закомментить эту строку, сбилдить, расскоментить, сбилдить
    layout = "universal_ortho";

    extraLayouts = {
      ul-ortho-combo = {
        description = "UL Ortho Combo";
        languages = [ "eng" "rus" ];
        symbolsFile = ./xkb/symbols/ul_ortho_combo;
      };
      ul-ortho-end = {
        description = "UL Ortho Eng";
        languages = [ "eng" ];
        symbolsFile = ./xkb/symbols/ul_ortho_eng;
      };
      ul-ortho-rus = {
        description = "UL Ortho Rus";
        languages = [ "rus" ];
        symbolsFile = ./xkb/symbols/ul_ortho_rus;
      };
    };
  };
}
