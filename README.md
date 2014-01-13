# Tomcat

## Description

A super simple **and incomplete** cookbook that:

 - Installs Tomcat from binary tarball
 - Configures and init script
 - Configures setenv.sh
 - Enables and starts Tomcat service

The purpose of this - for now - is to address the simple fact that the more popular Tomcat cookbooks don't quite do what I need them to do and/or are too complex for my needs.  I'm sure my cookbook will get there as feature requests come in, but we'll jump off that bridge when we get to it.

## Requirements

 - CentOS
 - Chef 11
 - Ark cookbook
 - Java cookbook

## Usage

### Tomcat 7 with OpenJDK 6
```ruby
# recipe space
include_recipe 'tomcat::default'
```

### Tomcat 5.5 with OpenJDK 6
```ruby
# attribute space
include_attribute 'tomcat'
node[:tomcat][:version] = '55'

# recipe space
include_recipe 'tomcat::default'
```

## Attributes

| Attribute | Value | Purpose |
| --------- | ----- | ------- |
| `node[:tomcat][:user]` | `'tomcat'` | Tomcat system user |
| `node[:tomcat][:group]` | `'tomcat'` | Tomcat system group |
| `node[:tomcat][:prefix_dir]` | `'/usr/local'` | Prefix directory under which Tomcat will be installed |
| `node[:tomcat][:home_dir]` | `'/usr/local/tomcat'` | Tomcat home directory |
| `node[:tomcat][:'7'][:checksum]` | `'46dc31b08c120ffc2e38dccc119b9df02662a9fb297fa3fc6d90902c2f86057a'` | Checksum for downloaded Tomcat tarball |
| `node[:java][:install_flavor]` | `'oracle'` | use Oracle JDK instead of default OpenJDK |
| `node[:java][:accept_license_agreement]` | `true` | Must accept Oracle License Agreement to enable direct download |
| `node[:java][:oracle][:accept_oracle_download_terms]` | `true` | Must accept Oracle Download Agreement to enable direct download |
| `node[:tomcat][:jvm_options]` |  `'-Xmx128M -Djava.awt.headless=true'` | JVM argument defaults.  Additional arguments affixed using `jvmargs` in recipe space |

## Recipes

### \_ark

Performs the bulk of the Tomcat installation.

 - Download Tomcat binary tarball and install it using Opscode [Ark](https://github.com/opscode-cookbooks/ark) cookbook.
 - Create Tomcat user/group.
 - Install Tomcat `server.xml` file.
 - Install Tomcat init script.
 - Create Tomcat PID directory.
 - Enable and start Tomcat service.

### \_java

 - Installs default Java using Opscode [Java](https://github.com/socrata-cookbooks/java) cookbook.

### base

 - Calls `_ark` recipe to install/configure Tomcat.

### default

 - Calls `_java` recipe to install Java.
 - Calls `_ark` recipe to install/configure Tomcat.

## To-Do & Bugs

 - Add logging.properties template with ability to set logging via attributes.
 - Combine server.xml into single template with partials for version diffs.
 - Add SSL support.

## License & Authors

  - Author:: Todd Michael Bushnell (<toddmichael@gmail.com>)

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
