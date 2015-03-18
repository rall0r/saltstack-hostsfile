# Manages the /etc/hosts file

# Setting up an salt master hosts entry 
{% set salt_master_ip = salt['pillar.get']('hosts:saltmaster', '10.0.0.1') %}

salt:
  host.present:
    - ip: {{ salt_master_ip }}

# Add hosts to /etc/hosts
{% for host_ip, host_name in salt['pillar.get']('hosts:hosts.present', {}).iteritems() %}

host_{{ host_ip }}_present:
  host.present:
    - ip: {{ host_ip }}
    - names: {{ host_name }}

{% endfor %}

# Removes hosts from /etc/hosts
{% for host_ip, host_name in salt['pillar.get']('hosts:hosts.absent', {}).iteritems() %}

host_{{ host_ip }}_absent:
  host.absent:
    - names: {{ host_name }}
    - ip: {{ host_ip }}

{% endfor %}
