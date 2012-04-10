nova-api:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

libvirt-bin:
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf    

nova-cert:
  pkg:
    - installed

nova-common:
  pkg:
    - installed

nova-compute:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

nova-compute-kvm:
  pkg:
    - installed

nova-doc:
  pkg:
    - installed

nova-network:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

nova-objectstore:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf
    
nova-scheduler:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

nova-vncproxy:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

nova-volume:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nova/nova.conf

python-nova:
  pkg:
    - installed

python-novaclient:
  pkg:
    - installed