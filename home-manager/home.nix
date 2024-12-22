{config, pkgs, ...}: {
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home = {
    username = "matthewholden";
    homeDirectory = "/Users/matthewholden";
  };

  programs.zsh  ={
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [
        "main"
        "cursor"
      ];
      styles = {
        comment = "fg=#585b70";
        alias = "fg=#a6e3a1";
        suffix-alias = "fg=#a6e3a1";
        global-alias = "fg=#a6e3a1";
        function = "fg=#a6e3a1";
        command = "fg=#a6e3a1";
        precommand = "fg=#a6e3a1,italic";
        autodirectory = "fg=#fab387,italic";
        single-hyphen-option = "fg=#fab387,italic";
        double-hyphen-option = "fg=#fab387";
        back-quoted-argument = "fg=#cba6f7";
        builtins="fg=#a6e3a1";
        reserved-word="fg=#a6e3a1";
        hashed-command="fg=#a6e3a1";
        commandseparator="fg=#f38ba8";
        command-substitution-delimiter="fg=#cdd6f4";
        command-substitution-delimiter-unquoted="fg=#cdd6f4";
        process-substitution-delimiter="fg=#cdd6f4";
        back-quoted-argument-delimiter="fg=#f38ba8";
        back-double-quoted-argument="fg=#f38ba8";
        back-dollar-quoted-argument="fg=#f38ba8";
        command-substitution-quoted="fg=#f9e2af";
        command-substitution-delimiter-quoted="fg=#f9e2af";
        single-quoted-argument="fg=#f9e2af";
        single-quoted-argument-unclosed="fg=#eba0ac";
        double-quoted-argument="fg=#f9e2af";
        double-quoted-argument-unclosed="fg=#eba0ac";
        rc-quote="fg=#f9e2af";
        dollar-quoted-argument="fg=#cdd6f4";
        dollar-quoted-argument-unclosed="fg=#eba0ac";
        dollar-double-quoted-argument="fg=#cdd6f4";
        assign="fg=#cdd6f4";
        named-fd="fg=#cdd6f4";
        numeric-fd="fg=#cdd6f4";
        unknown-token="fg=#eba0ac";
        path="fg=#cdd6f4,underline";
        path_pathseparator="fg=#f38ba8,underline";
        path_prefix="fg=#cdd6f4,underline";
        path_prefix_pathseparator="fg=#f38ba8,underline";
        globbing="fg=#cdd6f4";
        history-expansion="fg=#cba6f7";
        back-quoted-argument-unclosed="fg=#eba0ac";
        redirection="fg=#cdd6f4";
        arg0="fg=#cdd6f4";
        default="fg=#cdd6f4";
        cursor="fg=#cdd6f4";
      };
    };
    dotDir = ".config/zsh";
    initExtraBeforeCompInit = ''
    eval "$(/opt/homebrew/bin/brew shellenv)"
    eval "$(starship init zsh)"
    '';
    history = {
      ignoreDups = true;
      expireDuplicatesFirst = true;
      share = true;
    };
    shellAliases = {
      reload-zsh="source ~/.zshrc";
      edit-zsh="nvim ~/.zshrc";
      ssh="TERM=xterm-256color ssh";
      home = "cd $HOME";
      ll = "ls -l";
      ls = "eza --icons always";
      cd = "z";
      switch = "darwin-rebuild switch --flake ~/.config/nix-darwin";
    };
  };

  programs.bat = {
    enable = true;
    config = {
      theme = "Sublime Snazzy";
    };
  };

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    icons = "always";
  };

  programs.fd = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    changeDirWidgetCommand = "fd --type=d --hidden --strip-cwd-prefix --exclude .git";
    changeDirWidgetOptions = [
      "--preview 'eza --tree --color=always {} | head -200'"
    ];
    defaultCommand = "fd --hidden --strip-cwd-prefix --exclude .git";
    fileWidgetCommand = "fd --hidden --strip-cwd-prefix --exclude .git";
    fileWidgetOptions = [
      "--preview 'if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi'"
    ];
    colors = {
      "bg+" = "#313244";
      bg = "#1e1e2e";
      spinner = "#f5e0dc";
      hl = "#f38ba8";
      fg="#cdd6f4";
      header = "#f38ba8";
      info = "#cba6f7";
      pointer = "#f5e0dc";
      marker = "#b4befe";
      "fg+" = "#cdd6f4";
      prompt = "#cba6f7";
      "hl+" = "#f38ba8";
    };
  };

  programs.jq = {
    enable = true;
  };

  programs.kitty = {
    enable = true;
    # font = {
    #   package = pkgs.nerd-fonts.fira-code;
    #   name = "FiraCode";
    #   size = 13;
    # };
    keybindings = {
        "cmd+1" = "goto_tab 1";
        "cmd+2" = "goto_tab 2";
        "cmd+3" = "goto_tab 3";
        "cmd+4" = "goto_tab 4";
        "cmd+5" = "goto_tab 5";
        "cmd+6" = "goto_tab 6";
        "cmd+7" = "goto_tab 7";
        "cmd+8" = "goto_tab 8";
        "cmd+9" = "goto_tab 9";
        "cmd+0" = "goto_tab 10";
        "cmd+t" = "launch --type=tab --cwd=current";
        "cmd+n" = "launch --type=os-window --cwd=current";
      };
      themeFile = "Catppuccin-Mocha";
  };

  programs.starship = {
      enable = true;
      enableZshIntegration = true;
  };

  programs.thefuck = {
      enable = true;
      enableZshIntegration = true;
  };

  programs.zoxide = {
      enable = true;
      enableZshIntegration = true;
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
