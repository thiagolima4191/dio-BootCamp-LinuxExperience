#!/bin/bash

echo "::::::::::::::::::::::::::::::::::::"
echo ":::::::: Criando diretórios ::::::::"
echo "::::::::::::::::::::::::::::::::::::"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::: Criando grupos de usuários ::::::::"
echo "::::::::::::::::::::::::::::::::::::::::::::"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "::::::::::::::::::::::::::::::::::"
echo ":::::::: Criando usuários ::::::::"
echo "::::::::::::::::::::::::::::::::::"

#grupo admin
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

#grupo ven
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

#grupo sec
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "::::::::: Especificando permissões dos diretórios ::::::::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo ":::::::::::::::::::::"
echo ":::::::: Fim ::::::::"
echo ":::::::::::::::::::::"

