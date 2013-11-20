puppet-gemsource
================

Simple Puppet type and provider for managing gem sources

    gemsource { 'http://rubygems.org/':
      ensure => absent,
    }

    gemsource { 'http://private.repo/':
      ensure => present,
    }


If you are using Puppet Enterprise and want to manage the sources of the inbuilt Rubygems rather than the distro, use the pe flag

    gemsource { 'http://private.repo/':
      ensure => present,
      pe     => true,
    }


