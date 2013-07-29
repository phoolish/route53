Description
===========

Updates Amazon Web Service's Route 53 (DNS) service.

Modified to use the right_aws gem instead of fog to avoid having to install native build tools
on the destination servers.

Requirements
============

An Amazon Web Services account and a Route 53 zone.

Define the right_aws version attribute.  `default[:aws][:right_aws_version]`.

Usage
=====

```ruby
include_recipe "route53"

route53_record "create a record" do
  name  "test"
  value "16.8.4.2"
  type  "A"
  ttl   "3600" # default value

  # Will look up zone id based on zone name
  zone_name             node[:route53][:zone_name]
  aws_access_key_id     node[:route53][:aws_access_key_id]
  aws_secret_access_key node[:route53][:aws_secret_access_key]

  # Update true will update record ttl, type and value, if the name is the same
  update false # default value

  action :create
end
```
