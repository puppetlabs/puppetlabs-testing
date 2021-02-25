idifjo> **WARNING**  DO NOT USE IN PRODUCTION  **WARNING**
#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with the mdlj module](#setup)
    * [Beginning with the mdlj module](#beginning-with-the-mdlj-module)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [Development - Guide for contributing to the module](#development)

## Module Description

The mdlj module configures a system message of the day. The module includes a default message template. Alternatively, you can specify a different template or a static string.

## Setup

### Beginning with the mdlj module

To configure mdlj on your system, include the `mdlj` class: `include mdlj`.

## Usage

The mdlj module configures the message of the day on a wide variety of systems. The module populates either `/etc/mdlj`, `/etc/issue` and `/etc/issue.net` (on POSIX systems) or a registry key (on Windows systems) with the contents of a basic template file.

By default, the module populates mdlj using the included template. Alternatively, you can specify a different template or a static string. For example, to use a custom template you would set the template parameter:

```puppet
class { 'mdlj':
  template => 'mymodule/mytemplate.epp',
}
```

To specify a string as the message of the day:

```puppet
class { 'mdlj':
  content => "Hello world!\n",
}
```

## Reference

See [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-mdlj/blob/main/REFERENCE.md)

## Limitations

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-mdlj/blob/main/metadata.json)

Disabling dynamic mdlj is supported only on Debian.

### A note on Windows

On Windows systems, the mdlj module populates the contents of `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\policies\system\legalnoticetext` and `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\policies\system\legalnoticecaption`. The `legalnoticetext` registry key is shown before login on a Windows system.

## Development

We are experimenting with a new tool for running acceptance tests. It's name is [puppet_litmus](https://github.com/puppetlabs/puppet_litmus) this replaces beaker as the test runner. To run the acceptance tests follow the instructions [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(mdlj)#install-the-necessary-gems-for-the-module).

Puppet Labs modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. We can’t access the huge number of platforms and myriad hardware, software, and deployment configurations that Puppet is intended to serve. We want to keep it as easy as possible to contribute changes so that our modules work in your environment. There are a few guidelines that we need contributors to follow so that we can have a chance of keeping on top of things. For more information, see our [module contribution guide.](https://puppet.com/docs/puppet/latest/contributing.html)

## Contributors

The list of contributors can be found at: [https://github.com/puppetlabs/puppetlabs-mdlj/graphs/contributors](https://github.com/puppetlabs/puppetlabs-mdlj/graphs/contributors).
