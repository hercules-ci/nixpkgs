{ config, lib, ... }:

let
  inherit (lib) mkOption types;
in
{
  options = {
    dontEvaluateMe =
      throw "This option declaration should not be evaluated, because we only need to know that the attribute exists.";
    result = mkOption { };
  };
  config = {
    result = config ? dontEvaluateMe;
  };
}
