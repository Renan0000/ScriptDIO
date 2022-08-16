#!/bin/bash

echo "Creating users..."

useradd guest10 -C "Usuario convidado" -S /bin/bash -m -p ($openssl passwd -crypt Pass123)
passwd guest10 -e

useradd guest11 -C "Usuario convidado" -S /bin/bash -m -p ($openssl passwd -crypt Pass123)
passwd guest11 -e

useradd guest12 -C "Usuario convidado" -S /bin/bash -m -p ($openssl passwd -crypt Pass123)
passwd guest12 -e

useradd guest13 -C "Usuario convidado" -S /bin/bash -m -p ($openssl passwd -crypt Pass123)
passwd guest13 -e

echo "End"
