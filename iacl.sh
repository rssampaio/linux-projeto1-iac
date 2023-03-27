#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e
useradd rodrigo -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd rodrigo -e

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim !!"
