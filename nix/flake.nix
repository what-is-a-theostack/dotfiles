UnDo
*8Jbv
  };
    user = "kirb";5
gMRw
"    hostname = "emladevops.local";5
%    hostname = "matthewholden.local";5
    hostname = "";
    hostname = "";
    hostname = "C00210823";5
gMWa
  let
    nixpkgsConfig = {
      allowUnfree = true;
%      allowUnsupportedSystem = false;
    };
    user = "matthewholden";
    hostname = "C002108230";
  in
    # Build darwin flake using:
-    # $ darwin-rebuild build --flake .#simple
'    darwinConfigurations."emladevops" =
    let
"        system = "aarch64-darwin";
      in
#      nix-darwin.lib.darwinSystem {
      inherit system;
(      specialArgs = { inherit inputs; };
      modules = [
9        inputs.nix-index-database.darwinModules.nix-index
        ./darwin
        ({pkgs, inputs, ...}: {
)          nixpkgs.config = nixpkgsConfig;
          system = {
            stateVersion = 4;
          };
          users.users.kirb = {
!            home = "/Users/kirb";
            shell = pkgs.zsh;
          };
+         services.nix-daemon.enable = true;
       programs.zsh.enable = true;
         security = {
+          pam.enableSudoTouchIdAuth = true;
         };
        system.defaults = {
          dock.autohide = true;
"          dock.mru-spaces = false;
/          finder.AppleShowAllExtensions = true;
/          finder.FXPreferredViewStyle = "clmv";
6          NSGlobalDomain.AppleInterfaceStyle = "Dark";
        };
          nix = {
           useDaemon = true;
'              package = pkgs.nixFlakes;
              gc = {
!                automatic = true;
                user = user;
              };
              settings = {
)                allowed-users = [ user ];
C                experimental-features = [ "nix-command" "flakes" ];
#                warn-dirty = false;
+                auto-optimise-store = true;
              };
          };
        })
!        home-manager.darwinModule
        {
          home-manager = {
!            useGlobalPkgs = true;
#            useUserPackages = true;
             extraSpecialArgs = {
              inherit inputs;
            };
0            users.kirb = { ... }: with inputs; {
              imports = [
                ./shell
(                ./shell/jankyborders.nix
./shell/nvim.nix
../shared/ohmytmux.nix
./shell/alacritty.nix
'                nix-doom-emacs.hmModule
              ];
,              programs.neovim.enable = true;
%              programs.doom-emacs = {
                enable = false;
              };
*              home.stateVersion = "23.05";
            };
          };
        }
      ];
    };
B    # Expose the package set, including overlays, for convenience.
A    darwinPackages = self.darwinConfigurations."emladevops".pkgs;
  };
gMWc
T  outputs = { self, nix-darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
gMW{
  }5
  }5
    }5
  };5
    hostname = "let";5
gMUV
,  description = "Nix Dotfile Configuration";5
gMUr
gMUr
gMUz
gMU{
    
    nixpkgs.5
    nixpkgs.url5
    nixpkgs.url = "github"5
(    nixpkgs.url = "github:nixos/nixpkgs"5
0    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs"5
9    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"5
:    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";5
P  outputs = { , nix-darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
O  outputs = {  nix-darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
N  outputs = { nix-darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
K  outputs = { -darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
J  outputs = { darwin, nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
D  outputs = { , nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
C  outputs = {  nixpkgs, home-manager, nix-doom-emacs, ... }@inputs:5
@  outputs = {  nixpkgs, home-manager, -doom-emacs, ... }@inputs:5
?  outputs = {  nixpkgs, home-manager, doom-emacs, ... }@inputs:5
;  outputs = {  nixpkgs, home-manager, -emacs, ... }@inputs:5
:  outputs = {  nixpkgs, home-manager, emacs, ... }@inputs:5
5  outputs = {  nixpkgs, home-manager, , ... }@inputs:5
4  outputs = {  nixpkgs, home-manager,  ... }@inputs:5
3  outputs = {  nixpkgs, home-manager, ... }@inputs:5
2  outputs = {  nixpkgs, home-manager, .. }@inputs:5
1  outputs = {  nixpkgs, home-manager, . }@inputs:5
0  outputs = {  nixpkgs, home-manager,  }@inputs:5
1  outputs = {  nixpkgs, home-manager, . }@inputs:5
2  outputs = {  nixpkgs, home-manager, .. }@inputs:5
3  outputs = {  nixpkgs, home-manager, ... }@inputs:5
2  outputs = {  nixpkgs, home-manager, ... }@nputs:5
1  outputs = {  nixpkgs, home-manager, ... }nputs:5
,  outputs = {  nixpkgs, home-manager, ... }:5
0  outputs = {  nixpkgs, home-manager, ... }: let5
  arch = "aarch64-darwin"5
  let arch = "aarch64-darwin"5
,  outputs = {  nixpkgs, home-manager, ... }:5
gMV5
  let arch = "aarch64-darwin"5
  let arch = "aarch64-darwin";5
gMUs
gMUE
  description = "";5
