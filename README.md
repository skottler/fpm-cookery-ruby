Vendored rubies!
================

Cookery stuff for building Ruby for RHEL-ish platforms.

The process is pretty simple to build these packages:

1. `yum install -y rpmdevtools ruby-devel rubygems ruby`
2. `gem install bundler --no-ri --no-rdoc`
3. `bundle install`
4. `fpm-cook package -t rpm -p centos <version.rb>`
5. Wait a little while and the package will be in `pkg/`

###
Other fun:
* This repo is Apache 2 licensed. The full text is available in this repo and must be redistributed.
* Email [Sam](mailto:shk@linux.com) with any problems/questions, otherwise open issue against this repo.
