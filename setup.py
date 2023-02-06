#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""The setup script."""

from setuptools import setup, find_packages

with open("README.rst") as readme_file:
    readme = readme_file.read()

with open("HISTORY.rst") as history_file:
    history = history_file.read()

requirements = [
    "geopandas",
    "matplotlib",
    "numpy",
    "pandas >=1.0.0",
    "pooch",
    "regionmask",
    "seaborn",
    "tqdm",
    "xarray",
]

setup_requirements = []

test_requirements = ["pytest"]

setup(
    author="Jan Streffing",
    author_email="j.streffing1988@gmail.com",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Natural Language :: English",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.9",
    ],
    description="cmpitool",
    install_requires=requirements,
    license="MIT license",
    long_description=readme + "\n\n" + history,
    include_package_data=True,
    keywords="cmpitool",
    name="cmpitool",
    packages=["cmpitool"],
    setup_requires=setup_requirements,
    test_suite="tests",
    tests_require=test_requirements,
    url="https://github.com/JanStreffing/cmpitool",
    download_url="https://github.com/JanStreffing/cmpitool/archive/refs/tags/v0.1.5.tar.gz",
    version="0.1.5",
    zip_safe=False,
)
