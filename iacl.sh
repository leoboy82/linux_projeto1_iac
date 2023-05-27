#!/bin/bash

echo "Script para criação de diretórios"

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Script pa criação de grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Script para criação de usuários e ao mesmo tempo adicionando aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissôes dos diretórios"

chown root:GRP_ADM /adm
chown root GRP_VEN /ven
chown root GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica


echo "Finalizado"
