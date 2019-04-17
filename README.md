# docx-combine

Combine several DOCX documents into one using `python-docx` module.

# Installation

Use `pip` and install the program by url:
```sh
$ pip install https://github.com/cvlabmiet/docx-combine/archive/<version>.zip
```
Where `<version>` is a tag version described in [release page](https://github.com/cvlabmiet/docx-combine/releases/latest).

On NixOS (the latest version):
```sh
$ nix-env -if https://api.github.com/repos/cvlabmiet/docx-combine/tarball/master
```

# Usage

The program `docx-combine` has convenient command line interface, provided by `argparse` python module:
```sh
$ docx-combine --help
usage: docx-combine [-h] [--version] [--before [BEFORE [BEFORE ...]]]
                    [--after [AFTER [AFTER ...]]] --output OUTPUT
                    [--page-break] [--no-skip-sectpr]
                    main

Combine tool for DOCX

positional arguments:
  main                  main docx files

optional arguments:
  -h, --help            show this help message and exit
  --version, -V         show program's version number and exit
  --before [BEFORE [BEFORE ...]], -b [BEFORE [BEFORE ...]]
                        docx files inserted before main file content
  --after [AFTER [AFTER ...]], -a [AFTER [AFTER ...]]
                        docx files inserted after main file content
  --output OUTPUT, -o OUTPUT
                        output file
  --page-break, -p      insert page breaks between parts
  --no-skip-sectpr      do not skip SectPr: header and footer
```

Also it has `--version` flag to check the installed program version:
```sh
$ docx-combine --version
docx-combine <version>
```

The program expects `main` file that will be chosen as main part of document.
There are `before` and `after` options.
To insert parts before `main` use `--before` flag, and for after parts use `--after`.
Before and after insertions it is possible to break pages using `--page-break` flag.
Special flag `--no-skip-sectpr` allows to combine headers and footers not only from `main` file but from parts too.
