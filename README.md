# Use as a flake
 
[![FlakeHub](https://img.shields.io/endpoint?url=https://flakehub.com/f/your-org-name/your-flake-name/badge)](https://flakehub.com/flake/your-org-name/your-flake-name)
 
Add `your-flake-name` to your `flake.nix`:
 
```nix
{
  inputs.your-flake-name.url = "https://flakehub.com/f/your-org-name/your-flake-name/*";
 
  outputs = { self, your-flake-name }: {
    # Use in your outputs
  };
}
```
