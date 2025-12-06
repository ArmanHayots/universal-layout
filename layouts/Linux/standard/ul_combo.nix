{ ... }: {
  services.xserver = {
    # Есть баг, что при первом билде лайаут недоступен. Вроде уже пофикили, но...
    # Решение: сначала закомментить эту строку, сбилдить, расскоментить, сбилдить
    layout = "universal";

    extraLayouts = {
      ul-combo = {
        description = "UL Combo";
        languages = [ "eng" "rus" ];
        symbolsFile = ./xkb/symbols/ul_combo;
      };
      ul-end = {
        description = "UL Eng";
        languages = [ "eng" ];
        symbolsFile = ./xkb/symbols/ul_eng;
      };
      ul-rus = {
        description = "UL Rus";
        languages = [ "rus" ];
        symbolsFile = ./xkb/symbols/ul_rus;
      };
    };
  };
}
