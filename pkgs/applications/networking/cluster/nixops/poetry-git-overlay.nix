{ pkgs }:
self: super: {

  nixops = super.nixops.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/hercules-ci/nixops.git";
        rev = "1acf818ca5178f49a01fb9857bbf329f3d6ab28a";
        branchName = "remote-state-prs-combined";
        sha256 = "sha256-lkxhNBXWWV+PKcdU7dBFBjk3vCCi+/hIETnyujrvCg8=";
      };
    }
  );

  nixops-aws = super.nixops-aws.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/hercules-ci/nixops-aws.git";
        rev = "44ae5784f1b50600f7d2d8024b5eef2e9a685797";
        sha256 = "sha256-mFgsd0/Tt0HxLcVShci0Z5QkDoAc20iy2rU8XoJ2Grk=";
      };
    }
  );

  nixops-encrypted-links = super.nixops-encrypted-links.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/nix-community/nixops-encrypted-links.git";
        rev = "e2f196fce15fcfb00d18c055e1ac53aec33b8fb1";
        sha256 = "12ynqwd5ad6wfyv6sma55wnmrlr8i14kd5d42zqv4zl23h0xnd6m";
      };
    }
  );

  nixops-gcp = super.nixops-gcp.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/nix-community/nixops-gce.git";
        rev = "712453027486e62e087b9c91e4a8a171eebb6ddd";
        sha256 = "0siw2silxvbxdfgb2dcymn11nqdf8an7q43wcq1lyg1ac07w7dwh";
      };
    }
  );

  nixops-hercules-ci = super.nixops-hercules-ci.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/hercules-ci/nixops-hercules-ci.git";
        rev = "777ca6e3d74187aaf89889785ce083bd7e71e83e";
        sha256 = "1zmbk65ad8kv34hcn79kxswirj3vkks8cdszhbjwd7x2n21lz2g6";
      };
    }
  );

  nixops-virtd = super.nixops-virtd.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/nix-community/nixops-libvirtd.git";
        rev = "1245280d97e0adc4643d02d1cf62ddd582c73e49";
        sha256 = "1z3zsx54585rcyabj6hrbwbd1c783rrlfj53np1sa3i7m93vmxzc";
      };
    }
  );

  nixopsvbox = super.nixopsvbox.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/nix-community/nixops-vbox.git";
        rev = "2729672865ebe2aa973c062a3fbddda8c1359da0";
        sha256 = "07bmrbg3g2prnba2kwg1rg6rvmnx1vzc538y2q3g04s958hala56";
      };
    }
  );

  nixos-modules-contrib = super.nixos-modules-contrib.overridePythonAttrs (
    _: {
      src = pkgs.fetchgit {
        url = "https://github.com/nix-community/nixos-modules-contrib.git";
        rev = "81a1c2ef424dcf596a97b2e46a58ca73a1dd1ff8";
        sha256 = "0f6ra5r8i1jz8ymw6l3j68b676a1lv0466lv0xa6mi80k6v9457x";
      };
    }
  );

}
