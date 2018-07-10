{ pkgs ? import <nixpkgs> {} }:

with pkgs; with python3Packages; buildPythonApplication rec {
  pname = "docx-combine";
  version = "0.2.4";

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
