UnDo
      
        spe5
          # home-manager = {
#          #   useGlobalPkgs = true;
%          #   useUserPackages = true;
          #   verbose = true;
D          #   users.matthewholden = import ./home-manager/flake.nix;
          # };5
        
        in5
        inherit in5
4           # home-manager.darwinModules.home-manager5
           # {5
2           #    home-manager.useGlobalPkgs = true;5
4           #    home-manager.useUserPackages = true;5
,           #    home-manager.verbose = true;5
S           #    home-manager.users.matthewholden = import ./home-manager/flake.nix;5
G           #    # Optionally, use home-manager.extraSpecialArgs to pass5
+           #    # arguments to home-manager5
           #  }5
2           home-manager.darwinModules.home-manager5
=    # home-manager.url = "github:nix-community/home-manager";5
6    # home-manager.inputs.nixpkgs.follows = "nixpkgs";5
0  outputs = inputs@{self,  nixpkgs,  darwin }: {5
0  outputs = inputs@{self,  nixpkgs,  darwin,}: {5
3  outputs = inputs@{self,  nixpkgs,  darwin, ho}: {5
        inherit inputs;5
          inherit inputs;
        };5
        specialArgs = {
inherit inputs;};
          inherit inputs;};5
)        specialArgs = { inherit inputs;};5
R               home-manager.users.matthewholden = import ./home-manager/flake.nix;5
    # MaccOS AKA Darwin 5
    
    nix-index-database = {}5
      
    nix-index-database = {};5
;    home-manager.url = "github:nix-community/home-manager";5
?    home-manager = {.url = "github:nix-community/home-manager";5
>    home-manager = {url = "github:nix-community/home-manager";5
4    home-manager.inputs.nixpkgs.follows = "nixpkgs";5
0    -manager.inputs.nixpkgs.follows = "nixpkgs";5
/    manager.inputs.nixpkgs.follows = "nixpkgs";5
(    .inputs.nixpkgs.follows = "nixpkgs";5
      
'    inputs.nixpkgs.follows = "nixpkgs";5
    
    };5
=  outputs = inputs@{self,  nixpkgs,  darwin, home-manager}: {5
>  outputs = inputs@{self,  nixpkgs,  darwin, home-manager,}: {5
A  outputs = inputs@{self,  nixpkgs,  darwin, home-manager, sp}: {5
        
            in5
            inputs.5
            inputs.nix5
&            inputs.nix-index-database.5
(            inputs.nix-index-database.da5
3            home-manager.darwinModules.home-manager5
'            home-manager.darwinModules.5
A    darwinConfigurations."C002108230" = darwin.lib.darwinSystem {5
    
    darwinConfigurations = {
("C002108230" = darwin.lib.darwinSystem {
.      "C002108230" = darwin.lib.darwinSystem {5
  };5
            ./configuration.nix5
    # 
    nix-da5
    }5
url = "github:LnL7/nix-darwin";5
      
*    darwin.url = "github:LnL7/nix-darwin";5
.    darwin.inputs.nixpkgs.follows = "nixpkgs";5
L  outputs = inputs@{self,  nixpkgs,  darwin, home-manager, spicetify-nix}: {5
A    darwinConfigurations."C002108230" = darwin.lib.darwinSystem {5
*        specialArgs = { inherit inputs; };5
      
0              specialArgs = { inherit inputs; };5
&            home-manager.darwinModules5
'            home-manager.darwinModules.5
(            home-manager.darwinModules.h5
            ./darwin.nix5
            ./co.nix5
#            ./configuration.nix.nix5
          
                ex5
$                extraSpecialArgs = {5
"              extraSpecialArgs = {5
&               homextraSpecialArgs = {5
=            inputs.nix-index-database.darwinModules.nix-index5
    nix-index-database = {
6      url = "github:nix-community/nix-index-database";
)      inputs.nixpkgs.follows = "nixpkgs";
    };5
