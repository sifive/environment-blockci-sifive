# How to make a release

## Release artifacts

A release of environment-blockci-sifive comprosises a [Docker image](https://hub.docker.com/r/sifive/environment-blockci)
that is pushed to [Docker Hub](https://hub.docker.com/) and a tag of this Git
repository that can be used as a [Wit](https://github.com/sifive/wit) package.

## Release steps

1. Decide on the version number. We roughly follow [SemVer](https://semver.org/),
   although with a loose definition of "compatibility."
   In the following steps we will refer to that version number as `version`.
   Note: The version tag name is just the version string without a `v` prefix.
2. Create a branch from the tip of the `master` branch named `release-<version>`, e.g. `release-0.4.0`.
3. Update the CHANGELOG to take everything under the `[Unreleased]` section and
   place it under a new section whose name is the new `version`. Make sure that
   there is still an empty `[Unreleased]` section so that future changes can be
   collected there.
4. Also update the CHANGELOG to create a new link at the bottom that shows the
   diffs between the previous version and the new `version`.
5. Commit the changes and push them up to GitHub as a pull request. An example
   release pull request is
   https://github.com/sifive/environment-blockci-sifive/pull/9.
6. Merge the pull request to `master`.
7. Tag the merge commit as `<version>` (e.g. `0.4.0`) and push the tag to
   GitHub. This should trigger a Travis CI build that creates the Docker image
   and pushes it up to Docker Hub with a Docker tag that matches the Git tag.
8. Confirm that the Travis CI build succeeds and that the Docker image is
   pushed. You can confirm the Docker image is pushed by running
   `docker pull sifive/environment-blockci:<version>`.
9. Create a new [GitHub Release](https://github.com/sifive/environment-blockci-sifive/releases/new)
   where the title is just the version string (with a `v` prefix) and the body
   is just the contents from the CHANGELOG.
