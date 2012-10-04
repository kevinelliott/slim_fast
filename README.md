slim_fast
=========

The lightening speed diet plan that makes your URLs slimmer, faster.

slim_fast is a Ruby gem that makes it easy to create your own custom URL shortening service that can be embedded into your new or existing Rails app. Since it is a library and contains a Rails Engine, slim_fast will not interfere with your existing application.

Status
------

slim_fast is not yet ready for public consumption. It is under heavy development and this status will change when the first usable release is available.

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
* Downloadable Reports (csv, xls, json API)

Maybes:

* Captive Pausing (display another page for x seconds before redirecting to destination)

Installation
------------

$ gem install slim_fast
$ rails g slim_fast:install

Design Considerations
---------------------

* Must be easy to install/upgrade
  * gem install slim_fast
  * rails g slim_fast:install *or* rails g slim_fast:upgrade
  * edit initializer
* Must be testable
  * rspec
  * cucumber?
* Can be customized
  * developer can configure via admin interface
  * admin interface can be nested into existing admin UI

Model Structure
---------------

ShortDomain
  domain:string            (required)
  default:boolean          (default: false)

ShortUrl
  domain_id:integer        (optional)
  code:string              (required)
  destination_url:string   (required)
  hit_count:integer        (default: 0)
  owner_type:string        (optional)
  owner_id:integer         (optional)

Expansion
  short_url_id:integer     (required)
  domain_id:integer        (optional)
  requested_url:string     (optional)
  referrer_url:string      (optional)
  remote_ip:string         (optional)
  remote_addr:string       (optional)
  user_agent:string        (optional)

Contributors
------------

License
-------

