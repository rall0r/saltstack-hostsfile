## Simple state for managing the /etc/hosts file in Saltstack

It' a deadly simple state, depending on it's pillar to do things.

It's important to recognize, that the hostnames in pillar are provided as lists,
even if it is a single hostname you want to configure.
