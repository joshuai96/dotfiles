###############################################################################
# NixOS, homemanger, etc. helpful aliases.
###############################################################################
alias nix-system-clean='sudo nix-collect-garbage -d'
alias nix-user-clean='nix-collect-garbage -d'
alias nix-clean-orphans='nix store gc && sudo nix store optimise'
alias nix-profile-wipe='sudo nix profile wipe-history'
alias home-manager-clean='home-manager expire-generations -d'
alias nix-full-clean='nix-system-clean && nix-user-clean && nix-clean-orphans && nix-profile-wipe && home-manager-clean'
