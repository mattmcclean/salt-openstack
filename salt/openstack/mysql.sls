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

