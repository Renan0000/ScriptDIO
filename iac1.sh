#!/bin/bash

echo "Creating directories"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups"

groupadd GRP_ADM
groupadd GRP_VEN
groudadd GRP_SEC

echo "Creating Users Groups"

useradd carlos -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_ADM
useradd maria -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_ADM
useradd joao_ -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_ADM

useradd debora -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p ($openssl passwd -crypt Pass123) -G GRP_SEC

echo "Permissions Directories"

chown root:GRP_ADM /adm
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "END"
