{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  versionRegex = ".*__version__[[:space:]]*=[[:space:]]*['\"]([[:digit:]\\.]+)['\"].*";
  version = builtins.head (builtins.match versionRegex (builtins.readFile ./docx-combine));

in python3Packages.buildPythonApplication rec {
  pname = "docx-combine";
  inherit version;

  src = ./.;

  propagatedBuildInputs = with python3Packages; [ python-docx ];

  meta = with lib; {
    homepage = https://github.com/cvlabmiet/docx-combine;
    description = "Combine several docx files into one";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ igsha ];
  };
}
