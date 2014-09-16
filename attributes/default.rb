# Tomcat
default[:tomcat][:user] = 'tomcat'
default[:tomcat][:group] = 'tomcat'
default[:tomcat][:version] = '7'

# Directories and files
default[:tomcat][:prefix_dir] = '/usr/local'
default[:tomcat][:home_dir] = '/usr/local/tomcat'
default[:tomcat][:base_dir] = '/usr/local/tomcat'
default[:tomcat][:log_dir] = '/usr/local/tomcat/logs'
default[:tomcat][:tmp_dir] = '/usr/local/tomcat/temp'
default[:tomcat][:conf_dir] = '/usr/local/tomcat/conf'
default[:tomcat][:lib_dir] = '/usr/local/tomcat/lib'
default[:tomcat][:pid_dir] = '/var/run/tomcat'
default[:tomcat][:lock_dir] = '/var/lock/subsys'

# Connectors
default[:tomcat][:ajp_port] = 8009
default[:tomcat][:ajp_redirect_port] = 8443
default[:tomcat][:ajp_connection_timeout] = 20_000
default[:tomcat][:ajp_max_threads] = 200
default[:tomcat][:http_port] = 8080
default[:tomcat][:http_redirect_port] = 8443
default[:tomcat][:http_connection_timeout] = 20_000
default[:tomcat][:http_max_threads] = 200
default[:tomcat][:http_uri_encoding] = 'ISO-8859-1'

default[:tomcat][:catalina_opts] = ''
default[:tomcat][:java_opts] = '-Xmx128M -Djava.awt.headless=true'

# Tomcat binaries and sha256 checksums
default[:tomcat][:'8'][:url] = 'http://apache.spinellicreations.com/tomcat/tomcat-8/v8.0.12/bin/apache-tomcat-8.0.12.tar.gz'
default[:tomcat][:'8'][:checksum] = '07a58d93432a3047f3a892cb8b5d6749c0bfc177dc2a5e70e2331fbb7bbdc0af'
default[:tomcat][:'7'][:url] = 'http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz'
default[:tomcat][:'7'][:checksum] = '46dc31b08c120ffc2e38dccc119b9df02662a9fb297fa3fc6d90902c2f86057a'
default[:tomcat][:'6'][:url] = 'http://archive.apache.org/dist/tomcat/tomcat-6/v6.0.37/bin/apache-tomcat-6.0.37.tar.gz'
default[:tomcat][:'6'][:checksum] = '3e91abc752bf2b6ca19df9c8644bccdd92ba837397a8c1a745d72f58d5301b00'
default[:tomcat][:'55'][:url] = 'http://archive.apache.org/dist/tomcat/tomcat-5/v5.5.36/bin/apache-tomcat-5.5.36.tar.gz'
default[:tomcat][:'55'][:checksum] = '572c57236c28e3066d6ed08e991cb2d3d00740e3b29853bdb841673e0adcbf06'
default[:tomcat][:'5'][:url] = 'http://archive.apache.org/dist/tomcat/tomcat-5/archive/v5.0.27/bin/jakarta-tomcat-5.0.27.tar.gz'
default[:tomcat][:'5'][:checksum] = '873fc94b4316235091e69bca926bd66a0fb9fab542016e582a03323ed6777d78'
