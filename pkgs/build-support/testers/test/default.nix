{ testers, lib, pkgs, runCommand, ... }:
let
  pkgs-with-overlay = pkgs.extend(final: prev: {
    proof-of-overlay-hello = prev.hello;
  });

  dummyVersioning = {
    revision = "test";
    versionSuffix = "test";
    label = "test";
  };

in
lib.recurseIntoAttrs {
  # Check that the wiring of nixosTest is correct.
  # Correct operation of the NixOS test driver should be asserted elsewhere.
  nixosTest-example = pkgs-with-overlay.testers.nixosTest ({ lib, pkgs, figlet, ... }: {
    name = "nixosTest-test";
    nodes.machine = { pkgs, ... }: {
      system.nixos = dummyVersioning;
      environment.systemPackages = [ pkgs.proof-of-overlay-hello figlet ];
    };
    testScript = ''
      machine.succeed("hello | figlet >/dev/console")
    '';
  });

  testEqualContentsEqual = testers.testEqualContents {
    assertion = "The same directory contents at different paths are recognized as equal";
    expected = runCommand "expected" {} ''
      mkdir -p $out/c
      echo a >$out/a
      echo b >$out/b
      echo d >$out/c/d
    '';
    actual = runCommand "actual" {} ''
      mkdir -p $out/c
      echo a >$out/a
      echo b >$out/b
      echo d >$out/c/d
    '';
  };
}
