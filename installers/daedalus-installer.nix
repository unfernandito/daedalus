{ mkDerivation, base, bytestring, directory, filepath, github, Glob
, lens-aeson, megaparsec, nsis, optparse-applicative, split, stdenv
, system-filepath, temporary, text, turtle, universum, wreq, yaml
, zip-archive
}:
mkDerivation {
  pname = "daedalus-installer";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring directory filepath github Glob lens-aeson
    megaparsec nsis optparse-applicative split system-filepath
    temporary text turtle universum wreq yaml zip-archive
  ];
  description = "Daedalus Installer Builder";
  license = stdenv.lib.licenses.mit;
}
