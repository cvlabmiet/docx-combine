# combine-docx

Combine several DOCX documents into one using `python-docx` module.

# Installation

Use `pip` and install the program by url using [release page](https://github.com/igsha/combine-docx/releases/latest):
```sh
$ pip install https://github.com/igsha/combine-docx/archive/v0.2.zip
```

# Usage

The program `combine-docx` has convenient command line interface, provided by `argparse` python module:
```sh
$ combine-docx --help
usage: combine-docx [-h] [--version] [--before [BEFORE [BEFORE ...]]]
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
combine-docx 0.2.3
```

The program expects `main` file that will be chosen as main part of document.
There are `before` and `after` options.
To insert parts before `main` use `--before` flag, and for after parts use `--after`.
Before and after insertions it is possible to break pages using `--page-break` flag.
Special flag `--no-skip-sectpr` allows to combine headers and footers not only from `main` file but from parts too.
