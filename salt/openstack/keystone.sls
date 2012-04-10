keystone:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/keystone/keystone.conf

python-keystone:
  pkg:
    - installed

python-keystoneclient:
  pkg:
    - installed