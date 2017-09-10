#!/usr/bin/env python

from distutils.core import setup

setup(
    name="merge-docx",
    version="0.1",
    description="Merge several docx files into one",
    url="https://github.com/igsha/merge-docx",
    author="igsha",
    license="MIT",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Environment :: Console",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: MIT License",
        "Operating System :: POSIX",
        "Programming Language :: Python",
        "Topic :: Text Processing"
    ],
    scripts=['merge-docx'],
    install_requires=['python-docx >= 0.8.6'],
)
