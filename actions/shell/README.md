# Wake Action

This [GitHub Action](https://github.com/features/actions) will execute shell
command inside the environment-blockci-sifive docker container.  

See [action.yml](./action.yml) for a detailed list of input parameters.

## Example Usage

```yaml
jobs:
  test:
    name: Scala compile
    runs-on: ubuntu-latest

    steps:
    - name: Run a shell command
      uses: sifive/environment-blockci-sifive/actions/shell@0.7.0
      with:
        command: echo "Hello World"
```
