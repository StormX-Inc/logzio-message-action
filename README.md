# GitHub Action to send a message to Logz.io. 🔄 

This simple action sends a message to [Logz.io](logz.io).

## Usage

### `workflow.yml` Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```
name: Sync Bucket
on: push

jobs:
  deploy:
    runs-on: ubuntu-latest
    
  steps:
   - uses: actions/checkout@master
   
   - name: Send a message to logz.io
     uses: StormX-Inc/logzio-message-action@master
     env:
        LOGZIO_TOKEN: ${{ secrets.LOGZIO_TOKEN }}
        LOG_TYPE: "nginx"
        MESSAGE: "New message"
        MESSAGE_LEVEL: "debug"
        MESSAGE_LABEL: "some label"
```


### Required Environment Variables

| Key | Value | Type | Required |
| ------------- | ------------- | ------------- | ------------- |
| `LOGZIO_TOKEN` | The logz.io token. | `env` | **Yes** |
| `LOG_TYPE` | The log type, eg: `nginx`. | `env` | **Yes** |
| `MESSAGE` | The message. | `env` | **Yes** |
| `MESSAGE_LEVEL` | The message level, eg: `error`, `warn`, `info`, `debug` etc. | `env` | **Yes** |
| `MESSAGE_LABEL` | The message label. | `env` | **No** |


### Required Secret Variables

The following variables should be added as "secrets" in the action's configuration.

| Key | Value | Type | Required |
| ------------- | ------------- | ------------- | ------------- |
| `LOGZIO_TOKEN` | Your logz.io token. | `secret` | **Yes** |
