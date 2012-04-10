mysql-server:
  pkg:
    - installed

python-mysqldb:
  pkg:
    - installed

/etc/mysql/my.cnf:
  file:
    - sed
    - before: '127.0.0.1'
    - after: '0.0.0.0'
    - limit: '^bind-address'
    - require:
      - pkg: mysql-server

mysql:
  service:
    - running
    - require:
      - pkg: mysql-server
    - watch:
      - file: /etc/mysql/my.cnf

mysql -u root -e "CREATE DATABASE nova":
  cmd:
    - run
    - unless: {{ salt['mysql.db_exists']('nova') }}

mysql -u root -e "GRANT ALL PRIVILEGES ON nova.* TO 'novadbadmin'@'%' IDENTIFIED BY 'dieD9Mie'":
  cmd:
    - run
    - unless: {{ salt['mysql.user_exists']('novadbadmin')('%') }}

mysql -u root -e "CREATE DATABASE glance":
  cmd:
    - run
    - unless: {{ salt['mysql.db_exists']('glance') }}

mysql -u root -e "GRANT ALL PRIVILEGES ON glance.* TO 'glancedbadmin'@'%' IDENTIFIED BY 'ohC3teiv'":
  cmd:
    - run
    - unless: {{ salt['mysql.user_exists']('glancedbadmin')('%') }}