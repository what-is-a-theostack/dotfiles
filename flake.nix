UnDo
c88G
%      url = "github:LnL7/nix-darwin";
    spicetify-nix = {
*      url = "github:Gerg-L/spicetify-nix";
)      inputs.nixpkgs.follows = "nixpkgs";
    };5
  outputs = { self,}5
  outputs = { self, nix}5
  outputs = { self, nixpkgs,}5
)  outputs = { self, nixpkgs, nix-darwin,}5
.  outputs = { self, nixpkgs, nix-darwin, home}5
7  outputs = { self, nixpkgs, nix-darwin, home-manager,}5
9  outputs = { self, nixpkgs, nix-darwin, home-manager, .}5
:  outputs = { self, nixpkgs, nix-darwin, home-manager, ..}5
;  outputs = { self, nixpkgs, nix-darwin, home-manager, ...}5
<  outputs = { self, nixpkgs, nix-darwin, home-manager, ... }5
    
>  outputs = { self, nixpkgs, nix-darwin, home-manager, ... }@i5
    darwinConfigu5
  }5
    }5
  }5
      "C002108230"5
      "C002108230" = ni5
       "C002108230" = nix-darwin.5
$      "C002108230" = nix-darwin.lib.5
&      "C002108230" = nix-darwin.lib.da5
      }5
        sy5
        system = "aa"5
!        system = "aarch64-darwin"5
          
        
          .5
          ./nix.5
          ./nix.5
          ./nix/co5
          .5
          ,5
          .5
          ./ni5
          ./nix/wo5
          .5
          ./ni5
          ./nix/5
          ho5
          home-manager.5
$          home-manager.darwinModules5
%          home-manager.darwinModules.5
            
*          home-manager.darwinModules.home-5
            home-manager.5
1               home-manager.useGlobalPkgs = true;
3               home-manager.useUserPackages = true;
+               home-manager.verbose = true;
0               home-manager.extraSpecialArgs = {
!                  inherit inputs;
                };
Q               home-manager.users.matthewholden = import ./home-manager/home.nix;5
          }5
        ]5
          };5
          };;5
/              home-manager.extraSpecialArgs = {5
                inherit inputs;5
              };5
*              home-manager.verbose = true;5
P              home-manager.users.matthewholden = import ./home-manager/home.nix;5
M              home-manager.users.matthewholden = import ./n-manager/home.nix;5
Q              home-manager.users.matthewholden = import ./nix/h-manager/home.nix;5
R              home-manager.users.matthewholden = import ./nix/ho-manager/home.nix;5
]              home-manager.users.matthewholden = import ./nix/home-manager/-manager/home.nix;5
T              home-manager.users.matthewholden = import ./nix/home-manager/home.nix;5
R              home-manager.users.matthewholden = import ./nix/home-manager/wo.nix;5
[              home-manager.users.matthewholden = import ./nix/home-manager/work.hm.nix.nix;5
V              home-manager.users.matthewholden = import ./nix/home-manager/work.hm.nix5
0              home-manager.useGlobalPkgs = true;
2              home-manager.useUserPackages = true;
W              home-manager.users.matthewholden = import ./nix/home-manager/work.hm.nix;5
            
            h5
            
            ho5
            home-manager.5
              
            home-manager.ext5
              in5
              inherit i5
            }5
        
        5
        specialArgs =  5
        specialArgs = { i} 5
$        specialArgs = { inherit in} 5
(        specialArgs = { inherit inputs} 5
)        specialArgs = { inherit inputs } 5
*        specialArgs = { inherit inputs } ;5
)        specialArgs = { inherit inputs };5
)        specialArgs = { inherit inputs;};5
    
    nix-homebrew.
=    nix-homebrew.url = ""github:zhaofengli-wip/nix-homebrew""5
;    nix-homebrew.url = ""github:zhaofengli-wip/nix-homebrew5
=    nix-homebrew.url = ""github:zhaofengli-wip/nix-homebrew""5
=    nix-homebrew.url = ""github:zhaofengli-wip/nix-homebrew";5
F  outputs = { self, nixpkgs, nix-darwin, home-manager, ... }@inputs: {5
L  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-h ... }@inputs: {5
          ./nix/homebrew.nix5
          ./nix/homhomebrew.nix5
%          ./nix/homebrew/homebrew.nix5
          ./nix/homebrew/w.nix5
%          ./nix/homebrew/work.nix.nix5
!          ./nix/homebrew/work.nix5
          ./nix/homebrew/co.nix5
'          ./nix/homebrew/common.nix.nix5
8    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
`    nixpkgs.url ="https://flakehub.com/f/NixOS/nixpkgs/*" "github:nixos/nixpkgs/nixos-unstable";5
9    nixpkgs.url ="https://flakehub.com/f/NixOS/nixpkgs/*"5
:    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/*"5
%      url = "github:LnL7/nix-darwin";5
          
          nix-5
          nix-homebrew.5
%          nix-homebrew.darwinModules.5
,          nix-homebrew.darwinModules.nix-hom5
<          nix-homebrew.darwinModules.nix-homebrew = import .5
B          nix-homebrew.darwinModules.nix-homebrew = import ./nix/h5
M          nix-homebrew.darwinModules.nix-homebrew = import ./nix/homebrew.nix5
N          nix-homebrew.darwinModules.nix-homebrew = import ./nix/homebrew.nix;5
M          nix-homebrew.darwinModules.nix-homebrew = import ./nix/homebrew.nix5
2          nix-homebrew.darwinModules.nix-homebrew 5
2          nix-homebrew.darwinModules.nix-homebrew{
          }
            
            import .5
            import ./nix5
&            import ./nix/homebrew.nix;5
%            import ./nix/homebrew.nix5
          
          nix5
          nix-homebrew.5
          nix-homebrew.da5
)          nix-homebrew.darwinModules.nix-5
3          nix-homebrew.darwinModules.nix-homebrew {
          }
            
            .5
            ./ni5
            ./nix/homebrew.nix5
$          nix-homebrew.darwinModules5
&          nix-homebrew.darwinModules{}5
%          nix-homebrew.darwinModules{5
&          nix-homebrew.darwinModules {5
'          nix-homebrew.darwinModules. {5
0          nix-homebrew.darwinModules.nix-homeb {5
3          nix-homebrew.darwinModules.nix-homebrew {5
            
#            nix-homebrew = import .5
(            nix-homebrew = import ./nix/5
(            nix-homebrew = import ./nix/5
1            nix-homebrew = import ./nix/homebrew/5
9            nix-homebrew = import ./nix/homebrew/work.nix5
    
    
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
    };5
     # Declarative tap management5
c  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-homebrew, homebrew-core, ... }@inputs: {5
q  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-homebrew, homebrew-core, homebrew-cask ... }@inputs: {5
r  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-homebrew, homebrew-core, homebrew-cask, ... }@inputs: {5
  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-homebrew, homebrew-core, homebrew-cask, homebrew-bundle, ... }@inputs: {5
            
            nix-homebrew5
    
    
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
    };5
    
    w5
<      "CC002108230002108230" = nix-darwin.lib.darwinSystem {5
