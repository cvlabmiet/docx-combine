with import <nixpkgs> { };

mkShell rec {
  name = "docx-combine-shell";
  buildInputs = [ python3 python3Packages.python-docx ];
  shellHook = ''
    echo Welcome to ${name} test environment
  '';
}
