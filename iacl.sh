mkdir /publico
mkdir /adm
mkdir /ven 
mkdir /sec


echo "Criando os grupos de usuários"

groupadd GRP_adm
groupadd GRP_ven
groupadd GRP_sec


echo "Criando os usuários"

useradd maria -m -s /bin/bash -p $(openssl passwd -5  senha123)   -G GRP_adm
useradd carlos -m -s /bin/bash -p $(openssl passwd -5  senha123)  -G GRP_adm
useradd joao -m -s /bin/bash -p $(openssl passwd -5  senha123)    -G GRP_adm

useradd debora -m -s /bin/bash -p $(openssl passwd -5  senha123)   -G GRP_ven
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -5  senha123) -G GRP_ven
useradd roberto -m -s /bin/bash -p $(openssl passwd -5  senha123) -G GRP_ven

useradd josefina -m -s /bin/bash -p $(openssl passwd -5  senha123) -G GRP_sec
useradd amanda -m -s /bin/bash -p $(openssl passwd -5  senha123) -G GRP_sec
useradd rogerio -m -s /bin/bash -p $(openssl passwd -5  senha123) -G GRP_sec


echo "Dando permissões dos diretórios"

chown root:GRP_adm /adm
chown root:GRP_ven /ven
chown root:GRP_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM £"

