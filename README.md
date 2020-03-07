[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/zzzze/webhook-trigger) 

# 🚀 Webhook Trigger

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

A Github Action for sending data to an endpoint.

Supports for triggering any webhook events.

<hr/>


## Usage

Sending data to trigger a github webhook event, it can trigger workflow of another repo too (see [douments](https://help.github.com/en/articles/events-that-trigger-workflows#external-events-repository_dispatch) for more information documents):

```yml
- name: Webhook
  uses: zzzze/webhook-trigger@master
  with:
    data: "{\"event_type\":\"build\"}"
    webhook_url: ${{ secrets.WEBHOOK_URL }}
    options: "-H \"Accept: application/vnd.github.everest-preview+json\" -H \"Authorization: token ${{ secrets.TOKEN }}\""
```

### Inputs

All inputs will pass to `curl` command, so see [curl document](https://curl.haxx.se/docs/manpage.html) for more information.

|  Name  |  Required  |  Default  |  Description | Example |
| :--- | :--- | :--- | :--- | :--- |
|  webhook_url  |  true  |  ""  |  Endpoint URL  | `"https://****"` |
|  data  |  true  |  ""  |  Data to be posted  | `"{\"event_type\":\"build\"}"` |
|  options |  false  |  ""  |  Options  | `"-a foo -b bar"` |
|  user  |  false  |  ""  |  The user name and password to use for server authentication  | `"user:password"` |

With the inputs above, the action will invoke the following command finally:

`curl -X POST https://**** --user user:password --data "{\"event_type\":\"build\"}" -a foo -b bar`

## Issues

If you find any issues or have an improvement feel free to [submit an issue](https://github.com/zzzze/webhook-trigger/issues/new)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/zzzze/webhook-trigger.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/zzzze/webhook-trigger/releases
