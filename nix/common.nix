    enable = true;
    
      
      
      
      
    
      
    
      
        
      
        
      
      
    
      
    
    fonts = {
      packages = with pkgs; [
      nerd-fonts.fira-code
       nerd-fonts.droid-sans-mono
      ];
    nix = {
      gc = {
        automatic = true;
        user = "matthewholden";
      };
      settings = {
5        experimental-features = "nix-command flakes";
        warn-dirty = false;
      };
    };
    nixpkgs = {
&      hostPlatform = "aarch64-darwin";
      config = {
        allowUnfree = true;
'        allowUnsupportedSystem = false;
      };
  us
    
