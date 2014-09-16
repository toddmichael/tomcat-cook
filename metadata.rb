name 'tomcat'
maintainer 'Todd Michael Bushnell'
maintainer_email 'toddmichael@gmail.com'
license 'Apache 2.0'
description 'A simple Tomcat cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.0'

supports 'centos'

depends 'ark', '>= 0.9.0'
depends 'java', '>= 1.28.0'
