{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    # macOS Configuration
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager}:
  let
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ 
            pkgs.neofetch
            pkgs.vim
        ];

      fonts.packages = with pkgs; [
          nerd-fonts.fira-code
          nerd-fonts.droid-sans-mono
      ];
    # homebrew = {
    #     enable = true;
    #     # onActivation.cleanup = "uninstall";
    #
    #     taps = [];
    #     brews = [ "cowsay" ];
    #     casks = [];
    # };

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;  
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;
  
      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
      users.users.matthewholden = {
          name = "matthewholden";
          home = "/Users/matthewholden";
      };

      security.pam.enableSudoTouchIdAuth = true;


      # system.defaults = {

        # "com.apple.NetworkBrowser" = {
        #   BrowseAllInterfaces = true;
        # };

        # universalaccess.reduceTransparency = true;
        
        # "com.apple.desktopservices".DSDontWriteNetworkStores = true; 

        # spaces.spans-displays = true;
        #
        # dock = {
        #   autohide = true;
        #   mru-spaces = false;
        #   autohide-delay = 0.05;
        # };
        #
        # NSGlobalDomain = {
        #   NSAutomaticWindowAnimationsEnabled = false;
        #   "com.apple.swipescrolldirection" = true;
        #   KeyRepeat = 1;
        #   NSAutomaticSpellingCorrectionEnabled = false;
        #   AppleShowAllExtensions = true; 
        #   _HIHideMenuBar = true;
        #   AppleInterfaceStyle = "Dark";
        # };
        #
        #
        # finder = {
        #     AppleShowAllExtensions = true;
        #     DisableAllAnimations = true;
        #     ShowExternalHardDrivesOnDesktop = false;
        #
        #
        # };
      # };
          
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#C002108230
    darwinConfigurations."C002108230" = nix-darwin.lib.darwinSystem {
      modules = 
          [ 
            configuration
            home-manager.darwinModules.home-manager 
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.verbose = true;
              home-manager.users.matthewholden = import ./home-manager/home.nix;
            }
          ];
    };
  };
}
