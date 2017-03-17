# Nginx AWS Elasticsearch Proxy

AWS Elasticsearch is apparently not available in VPC, and authentication to it
is done only via whitelisting IP addresses or signing every request.

This is dumb, and does not work with ephemeral application servers.

To get around it, folks have suggested implementing a proxy server, attaching
an elastic IP address to it, and whitelisting that IP. That's what this tiny
repo does, in a Dockerfile. It's essentially a generic proxy to fit my usecase.

Borrowed essentially wholesale from https://eladnava.com/secure-aws-elasticsearch-service-behind-vpc/