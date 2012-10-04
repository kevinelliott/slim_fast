slim_fast
=========

The lightening speed diet plan that makes your URLs slimmer, faster.

slim_fast is a Ruby gem that makes it easy to create your own custom URL shortening service that can be embedded into your new or existing Rails app. Since it is a library and contains a Rails Engine, slim_fast will not interfere with your existing application.

Features
--------

Current:

* Gem & Rails Engine

Pending:

* Shorten internal (Rails) and external URLs
* Custom Domain(s)
* Simple Admin Interface
* Short Link Statistics

Future:

* Rack App
* Command-line Tools
* Integration with external URL shortening services (goo.gl, tinyurl, etc)?

Design Considerations
---------------------

* Must be easy to install/upgrade
  # gem install slim_fast
  # rails g slim_fast:install *or* rails g slim_fast:upgrade
  # edit initializer
* Must be testable
  * rspec
  * cucumber?
* Can be customized
  # developer can configure via admin interface
  # admin interface can be nested into existing admin UI
