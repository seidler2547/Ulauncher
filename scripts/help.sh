#!/usr/bin/env bash

help () {
  echo "Usage:

  ${bold}./ul run
    ${dim}Alias for './bin/ulauncher -v --dev'${normal}

  ${bold}./ul dev-container
    ${dim}Takes you into an Ubuntu Docker container from which you can run tests and build binary packages
    This is added for convenience so developers won't be required to install all the build and test dependencies locally

  ${bold}./ul rm-python-cache
    ${dim}Removes .pyc, .pyo, __pycache__${normal}

  ${bold}./ul test-mypy
    ${dim}Runs type cheker using mypy${normal}

  ${bold}./ul test-pylint
    ${dim}Runs pylint${normal}

  ${bold}./ul test-pytest
    ${dim}Runs pytest${normal}

  ${bold}./ul test
    ${dim}Runs all test-* commands${normal}

  ${bold}./ul send-signal [SIGNAL]
    ${dim}Sends a signal to Ulauncher. SIGHUP by default
    May be useful for debugging themes: Ulauncher handles SIGHUP by re-applying theme files${normal}

  ${bold}./ul edit-ui
    ${dim}Starts glade${normal}


The commands below are useful for maintainers:

  ${bold}./ul build-deb <--deb or --upload>
    ${dim}Builds a deb package or uploads new Ulauncher version to PPA in Launchpad${normal}

  ${bold}./ul build-rpm <DISTRO_NAME> [FILE_SUFFIX]
    ${dim}Builds an rpm package
    DISTRO_NAME is a required second argument and can take one of this values: feodra, suse, centos
    FILE_SUFFIX is an optional argument. By default, file suffix is DISTRO_NAME${normal}

  ${bold}./ul build-targz
    ${dim}Builds a targz archive with the source code${normal}

  ${bold}./ul create-build-images
    ${dim}Builds Docker images which are used for building packages.
    It also pushes them to the Docker registry${normal}

  ${bold}./ul tag-release
    ${dim} Wrapper script to tag a new release with the change note, and bump the version in setup.cfg${normal}

  ${bold}./ul build-release
    ${dim}[Travis CI only] script to build the tag/release and upload the package files to it, and distro repositories ${normal}

  ${bold}./ul travis-cli-container
    ${dim}Takes you into travis-cli container. Useful for updating .travis.yml${normal}

  ${bold}./ul run-ci
    ${dim}Runc CI integration tasks: tests, build preferences and API docs${normal}

  ${bold}./ul build-doc
    ${dim}Builds API docs for extensions using sphinx${normal}

  ${bold}./ul watch-doc
    ${dim}Runs './ul build-doc' when *.py and *.rst files change${normal}"

}
