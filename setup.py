#!/usr/bin/env python

from setuptools import setup
import re

script_content = open('docx-combine').read()
metadata = dict(re.findall("__([a-z]+)__\s*=\s*'([^']+)'", script_content))

setup(
    name="docx-combine",
    version=metadata['version'],
    description="Combine several docx files into one",
    url="https://github.com/cvlabmiet/docx-combine",
    author="igsha",
    license="LICENSE",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Environment :: Console",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: MIT License",
        "Operating System :: POSIX",
        "Programming Language :: Python",
        "Topic :: Text Processing"
    ],
    scripts=['docx-combine'],
    install_requires=['python-docx >= 0.8.6'],
)
