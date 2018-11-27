add_ssh_known_hosts
===================

Scan ssh keys and save to known_hosts.

Role Variables
--------------

```yaml
add_ssh_known_hosts:
  - DOMAIN_NAME_1
  - DOMAIN_NAME_2
```

Dependencies
------------

- pylabs.sysbase

Example Playbook
----------------

```yaml
roles:
  - role: pylabs.add_ssh_known_hosts
vars:
  add_ssh_known_hosts:
    - example.org
    - example.com
```

License
-------

MIT

Author Information
------------------

William Wu
