#!/bin/bash

echo "Criação de diretórios"
mkdir publico pro alu dir

echo "Criação de grupos de Professores"
groupadd GRP_PRO
groupadd GRP_ALU
groupadd GRP_DIR

echo "Criação de usuarios PRO"
useradd joana -m -s /bin/bash -p $(openssh passwd -crypt Professor123) -G GRP_PRO
useradd tereza -m -s /bin/bash -p $(openssh passwd -crypt Professor123) -G GRP_PRO
useradd paulo -m -s /bin/bash -p $(openssh passwd -crypt Professor123) -G GRP_PRO

echo "Criação de usuarios ALU"
useradd gilberto -m -s /bin/bash -p $(openssh passwd -crypt Aluno123) -G GRP_ALU
useradd alexandre -m -s /bin/bash -p $(openssh passwd -crypt Aluno123) -G GRP_ALU
useradd pedro -m -s /bin/bash -p $(openssh passwd -crypt Aluno123) -G GRP_ALU

echo "Criação de usuarios DIR"
useradd jailton -m -s /bin/bash -p $(openssh passwd -crypt Diretor123) -G GRP_DIR
useradd marta -m -s /bin/bash -p $(openssh passwd -crypt Diretor123) -G GRP_DIR
useradd paula -m -s /bin/bash -p $(openssh passwd -crypt Diretor123) -G GRP_DIR

echo "Permissões dos diretórios"
chown root:GRP_PRO /pro
chown root:GRP_ALU /alu
chown root:GRP_DIR /dir

chmod 770 /pro
chmod 770 /alu
chmod 770 /dir
chmod 777 /publica

echo "Finalizado"