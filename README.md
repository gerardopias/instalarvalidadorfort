# Install validador FORT

```
wget https://github.com/gerardopias/instalarvalidadorfort/archive/master.zip
unzip master.zip
cd instalarvalidadorfort-master/
```

Local installation, run: 
```
./nuevoinstalador.sh
```
After installation finish,run:
```
sudo service fort start
```

<hr/>

Vagrant installation, run: 
```
cd vagrant
vagrant up
```
After installation finish, login using the following credentials:

- user: vagrant
- pass: vagrant

and run:
```
sudo service fort start
```

More documentation at [https://nicmx.github.io/FORT-validator/](https://nicmx.github.io/FORT-validator/).
