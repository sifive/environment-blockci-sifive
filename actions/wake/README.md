# Wake Action

This [GitHub Action](https://github.com/features/actions) will execute wake
inside the environment-blockci-sifive docker container.  The
environment-blockci-sifive should be included into the wit workspace so that
build rules are aware of the available tools.  If no command is specified,
wake simply type checks the build rules.

See [action.yml](./action.yml) for a detailed list of input parameters.

## Example Usage

```yaml
jobs:
  test:
    name: Scala compile
    runs-on: ubuntu-latest

    steps:
    - name: Wit Init
      uses: sifive/wit/actions/init@v0.13.2
      with:
        additional_packages: git@github.com:sifive/environment-blockci-sifive.git::0.7.1

    - name: Run wake scala compile
      uses: sifive/environment-blockci-sifive/actions/wake@0.7.1
      with:
        command: -x 'compileScalaModule myScalaModule | getPathResult'
```
