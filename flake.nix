    spicetify-nix = {
)      inputs.nixpkgs.follows = "nixpkgs";
    
          
        
            
1               home-manager.useGlobalPkgs = true;
3               home-manager.useUserPackages = true;
0               home-manager.extraSpecialArgs = {
!                  inherit inputs;
                };
0              home-manager.useGlobalPkgs = true;
2              home-manager.useUserPackages = true;
            
            
              
        
    
    nix-homebrew.
8    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
          
2          nix-homebrew.darwinModules.nix-homebrew{
          }
            
          
3          nix-homebrew.darwinModules.nix-homebrew {
          }
            
            
    
    
    Declarative tap management
    homebrew-core = {
,      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
,      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    homebrew-bundle = {
.      url = "github:homebrew/homebrew-bundle";
      flake = false;
            
    
    
    homebrew-core = {
,      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
,      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    homebrew-bundle = {
.      url = "github:homebrew/homebrew-bundle";
      flake = false;
    
