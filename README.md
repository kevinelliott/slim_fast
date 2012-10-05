slim_fast
=========

The lightening speed diet plan that makes your URLs slimmer, faster.

slim_fast is a Ruby gem that makes it easy to create your own custom URL shortening service that can be embedded into your new or existing Rails app. Since it is a library and contains a Rails Engine, slim_fast will not interfere with your existing application.

Project Status
--------------

### Not yet usable.

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
* Google Analytics Campaign Tracking (utm_source, etc)

Future:

* Rack App
* Command-line Tools
* Integration with external URL shortening services (goo.gl, tinyurl, etc)?
* Downloadable Reports (csv, xls, json API)

Maybes:

* Captive Pausing (display another page for x seconds before redirecting to destination)

Installation
------------

```shell
$ gem install slim_fast
$ rails g slim_fast:install
```

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
<pre>
  domain:string            (required)
  is_default:boolean       (default: false)
</pre>

ShortUrl
<pre>
  short_domain_id:integer  (optional)
  code:string              (required)
  destination_url:string   (required)
  name:string              (required)
  description:text         (optional)
  expansion_count:integer  (default: 0)
  owner_type:string        (optional)
  owner_id:integer         (optional)
  utm_enabled:boolean      (default: false)
  utm_source:string        (optional)
  utm_medium:string        (optional)
  utm_campaign:string      (optional)
  utm_term:string          (optional)
  utm_content:string       (optional)
</pre>

Expansion
<pre>
  short_url_id:integer     (required)
  domain_id:integer        (optional)
  request_url:string       (optional)
  referrer_url:string      (optional)
  remote_ip:string         (optional)
  remote_addr:string       (optional)
  user_agent:string        (optional)
</pre>

Maintainer
----------

* Kevin Elliott - http://kevinelliott.net - http://github.com/kevinelliott
* WeLike - http://www.welikeinc.com - http://github.com/welike

Contributors
------------

A warm thank you to all contributors to the project, who have put effort and time into making this gem more useful.

License
-------

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.