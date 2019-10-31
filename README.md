# action-repoman

Automatically run repoman on a repository and report QA errors.

## Basic Usage

An example workflow to run [repoman](https://wiki.gentoo.org/wiki/Repoman) on an overlay after every `push`
and on a schedule:

```yaml
name: Overlay QA

on:
  push:
    paths-ignore:
      - 'README.md'
  schedule:
    - cron: "0 6 * * 1"

jobs:
  repoman:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: hacking-gentoo/action-repoman@master
```