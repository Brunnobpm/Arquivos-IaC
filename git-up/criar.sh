#!/bin/bash

echo  "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


funuseradd(){
    useradd $USERADM -m -s /bin/bash -p teste123 -G GRP_ADM
    echo "Criando usuários: $USERADM"
}
{ 
    useradd $USERVEN -m -s /bin/bash -p teste123 -G GRP_VEN
    echo "Criando usuários: $USERVEN"
}
{
    useradd $USERSEC -m -s /bin/bash -p teste123 -G GRP_SEC
    echo "Criando usuários: $USERSEC"
}

USERADM=maria
funuseradd

USERADM=joao
funuseradd

USERADM=carlos
funuseradd

USERVEN=debora
funuseradd

USERVEN=sebastiana
funuseradd

USERVEN=roberto
funuseradd

USERSEC=josefina
funuseradd

USERSEC=amanda
funuseradd

USERSEC=rogerio
funuseradd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM!"