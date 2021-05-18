# CR BUILD Action IBMCloud

This action is to build an image into IBM Cloud

## Entradas

### `url`

**Mandatory** url of the server like: de.icr.io

### `namespace`

**Mandatory** namspace to build the image

### `imagename`

**Mandatory** image name

### `buildnr`

**Mandatory** build nr: typically commit nr

### `tag`

**Mandatory** tag number


## Ejemplo de uso


```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    
    - uses: mnevadom/ibmdocker-tag@v1
      with:
        url: de.icr.io
        namespace: dgp-registry
        imagename: postservice
        buildnr: c76d5f0
        tag: 1.4.2

```
