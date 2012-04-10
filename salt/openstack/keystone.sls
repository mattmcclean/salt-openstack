keystone:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/keystone/keystone.conf

/etc/keystone/keystone.conf:
  file:
    - managed
    - source: salt://openstack/keystone.conf
    - user: root
    - group: root
    - mode: 644

python-keystone:
  pkg:
    - installed

python-keystoneclient:
  pkg:
    - installed

/tmp/keystone_data.sh:
  file:
    - managed
    - source: salt://openstack/keystone_data.sh
    - user: root
    - group: root
    - mode: 744
  cmd:
    - run

