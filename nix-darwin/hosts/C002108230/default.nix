UnDo
G      system.configurationRevision = self.rev or self.dirtyRev or null;
gPv{
"      environment.systemPackages =5
        [ 5
            pkgs.neofetch5
            pkgs.vim5
        ];5
gPu?
@      nix.settings.experimental-features = "nix-command flakes";
7      # Enable alternative shell support in nix-darwin.
@      # Create /etc/zshrc that loads the nix-darwin environment.
#      programs.zsh.enable = true;  
$      # programs.fish.enable = true;
/      # Set Git commit hash for darwin-version.
G      system.configurationRevision = self.rev or self.dirtyRev or null;
T      # Used for backwards compatibility, please read the changelog before changing.
"      # $ darwin-rebuild changelog
      system.stateVersion = 5;
7      # The platform the configuration will be used on.
.      nixpkgs.hostPlatform = "aarch64-darwin";
#      users.users.matthewholden = {
!          name = "matthewholden";
(          home = "/Users/matthewholden";
      };
0      security.pam.enableSudoTouchIdAuth = true;5
gPu@
>    nix.settings.experimental-features = "nix-command flakes";
5    # Enable alternative shell support in nix-darwin.
>    # Create /etc/zshrc that loads the nix-darwin environment.
!    programs.zsh.enable = true;  
"    # programs.fish.enable = true;
-    # Set Git commit hash for darwin-version.
E    system.configurationRevision = self.rev or self.dirtyRev or null;
R    # Used for backwards compatibility, please read the changelog before changing.
     # $ darwin-rebuild changelog
    system.stateVersion = 5;
5    # The platform the configuration will be used on.
,    nixpkgs.hostPlatform = "aarch64-darwin";
!    users.users.matthewholden = {
        name = "matthewholden";
&        home = "/Users/matthewholden";
    };
.    security.pam.enableSudoTouchIdAuth = true;5
gPuC
<  nix.settings.experimental-features = "nix-command flakes";
3  # Enable alternative shell support in nix-darwin.
<  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  
   # programs.fish.enable = true;
+  # Set Git commit hash for darwin-version.
C  system.configurationRevision = self.rev or self.dirtyRev or null;
P  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;
3  # The platform the configuration will be used on.
*  nixpkgs.hostPlatform = "aarch64-darwin";
  users.users.matthewholden = {
      name = "matthewholden";
$      home = "/Users/matthewholden";
  };
,  security.pam.enableSudoTouchIdAuth = true;5
gPuL
J      # List packages installed in system profile. To search by name, run:
"      # $ nix-env -qaP | grep wget
     environment.systemPackages =
      [ 
          pkgs.neofetch
          pkgs.vim
      ];
    # homebrew = {
    #     enable = true;
/    #     # onActivation.cleanup = "uninstall";
    #
    #     taps = [];
    #     brews = [ "cowsay" ];
    #     casks = [];
    # };
2      # Necessary for using flakes on this system.5
gPuM
H    # List packages installed in system profile. To search by name, run:
     # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
        pkgs.neofetch
        pkgs.vim
    ];
  # homebrew = {
  #     enable = true;
-  #     # onActivation.cleanup = "uninstall";
  #     taps = [];
  #     brews = [ "cowsay" ];
  #     casks = [];
  # };
0    # Necessary for using flakes on this system.5
gPuS
F  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget5
gPuU
gPu`
D# List packages installed in system profile. To search by name, run:
# $ nix-env -qaP | grep wget
environment.systemPackages =
  [ 
      pkgs.neofetch
      pkgs.vim
  ];
# homebrew = {
#     enable = true;
+#     # onActivation.cleanup = "uninstall";
#     taps = [];
#     brews = [ "cowsay" ];
#     casks = [];
# };
.  # Necessary for using flakes on this system.
:nix.settings.experimental-features = "nix-command flakes";
1# Enable alternative shell support in nix-darwin.
:# Create /etc/zshrc that loads the nix-darwin environment.
programs.zsh.enable = true;  
# programs.fish.enable = true;
)# Set Git commit hash for darwin-version.
Asystem.configurationRevision = self.rev or self.dirtyRev or null;
N# Used for backwards compatibility, please read the changelog before changing.
# $ darwin-rebuild changelog
system.stateVersion = 5;
1# The platform the configuration will be used on.
(nixpkgs.hostPlatform = "aarch64-darwin";
users.users.matthewholden = {
    name = "matthewholden";
"    home = "/Users/matthewholden";
*security.pam.enableSudoTouchIdAuth = true;5
gPub
D# List packages installed in system profile. To search by name, run:
# $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
        pkgs.neofetch
        pkgs.vim
    ];
# homebrew = {
#     enable = true;
+#     # onActivation.cleanup = "uninstall";
#     taps = [];
#     brews = [ "cowsay" ];
#     casks = [];
# };
0    # Necessary for using flakes on this system.
<  nix.settings.experimental-features = "nix-command flakes";
1# Enable alternative shell support in nix-darwin.
:# Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  
# programs.fish.enable = true;
)# Set Git commit hash for darwin-version.
C  system.configurationRevision = self.rev or self.dirtyRev or null;
N# Used for backwards compatibility, please read the changelog before changing.
# $ darwin-rebuild changelog
  system.stateVersion = 5;
1# The platform the configuration will be used on.
*  nixpkgs.hostPlatform = "aarch64-darwin";
  users.users.matthewholden = {
      name = "matthewholden";
$      home = "/Users/matthewholden";
  };
,  security.pam.enableSudoTouchIdAuth = true;5
gPur
{pkgs, ...}: 5
gPus
{pkgs, self,...}: 5
)# Set Git commit hash for darwin-version.
E    system.configurationRevision = self.rev or self.dirtyRev or null;5
     environment.systemPackages =
      [ 
          pkgs.neofetch
          pkgs.vim
      ];
# homebrew = {
#     enable = true;
+#     # onActivation.cleanup = "uninstall";
#     taps = [];
#     brews = [ "cowsay" ];
#     casks = [];
# };
2      # Necessary for using flakes on this system.
>    nix.settings.experimental-features = "nix-command flakes";
1# Enable alternative shell support in nix-darwin.
:# Create /etc/zshrc that loads the nix-darwin environment.
!    programs.zsh.enable = true;  
# programs.fish.enable = true;
N# Used for backwards compatibility, please read the changelog before changing.
# $ darwin-rebuild changelog
    system.stateVersion = 5;
1# The platform the configuration will be used on.
,    nixpkgs.hostPlatform = "aarch64-darwin";
!    users.users.matthewholden = {
        name = "matthewholden";
&        home = "/Users/matthewholden";
    };
.    security.pam.enableSudoTouchIdAuth = true;5
0    # Necessary for using flakes on this system.5
1# Enable alternative shell support in nix-darwin.5
:# Create /etc/zshrc that loads the nix-darwin environment.5
# programs.fish.enable = true;5
N# Used for backwards compatibility, please read the changelog before changing.5
# $ darwin-rebuild changelog5
1# The platform the configuration will be used on.5
D# List packages installed in system profile. To search by name, run:5
gPv!
# $ nix-env -qaP | grep wget5
gPvs
gPvx
1        # Set Git commit hash for darwin-version.5
gPvz
G      system.configurationRevision = self.rev or self.dirtyRev or null;5
gPu8
>    nix.settings.experimental-features = "nix-command flakes";5
  environment.systemPackages =5
  [ 5
