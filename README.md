# Module: gemsource

## Description
Simple Puppet type and provider for managing gem sources

## Usage
The gemsource module will add a gemsource type to puppet and enable you to add a custom gemsource to your system. You can add a custom gemsource for Puppet Enterprise or open source puppet. The gemsource will also remove a gemsource if present.

## Parameters
* `ensure`: [present,absent] Specify whether the source is present or not.
* `globalconfig`: [true,false] If true then gem sources will be configured in /etc/gemrc
* `pe`: [true,false] If you are using Puppet Enterprise and want to manage the sources of the inbuilt Rubygems rather than the distro, use the pe flag

## Examples
```
gemsource { 'http://rubygems.org/':
  ensure => absent,
}

gemsource { 'http://private.repo/':
  ensure => present,
}

gemsource { 'http://another.repo/':
  ensure       => present,
  globalconfig => true,
```

## Caveats
The puppet service will run as root with no environment set on Systemd enabled systems. Typically CentOS 7.x and Ubuntu 14.04.
This has the effect of creating a .gemrc file in the / directory. Please refer to [ENTERPRISE-833](https://tickets.puppetlabs.com/browse/ENTERPRISE-833)
for more detail.

The puppet provider uses the gem command to add a new source, and is thus bound by its limitations. Specifically `gem source --add' will try and connect to the
repository and will fail to add the repository if it can't connect.
