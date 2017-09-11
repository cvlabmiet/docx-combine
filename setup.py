#!/usr/bin/env python

from distutils.core import setup

setup(
    name="combine-docx",
    version="0.2",
    description="Combine several docx files into one",
    url="https://github.com/igsha/combine-docx",
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
    scripts=['combine-docx'],
    install_requires=['python-docx >= 0.8.6'],
)
