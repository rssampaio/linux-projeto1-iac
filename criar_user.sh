#! /bin/bash

echo "Criando usuários do sistema..."

useradd guest1 -c "Convidado 1" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest1 -e

useradd guest2 -c "Convidado 1" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest2 -e

useradd guest3 -c "Convidado 1" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest3 -e

echo "Finalizado !!"
