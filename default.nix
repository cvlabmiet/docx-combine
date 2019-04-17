{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  versionRegex = ".*__version__[[:space:]]*=[[:space:]]*['\"]([[:digit:]\\.]+)['\"].*";
  version = builtins.head (builtins.match versionRegex (builtins.readFile ./docx-combine));

in python3Packages.buildPythonApplication rec {
  pname = "docx-combine";
  inherit version;

  src = ./.;

  propagatedBuildInputs = [ python-docx ];

  meta = with stdenv.lib; {
    homepage = https://github.com/cvlabmiet/docx-combine;
    description = "Combine several docx files into one";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ igsha ];
  };
}
