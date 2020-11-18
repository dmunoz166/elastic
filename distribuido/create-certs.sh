#!/bin/bash
#Correr como root
if [[ ! -f $HOME/certs/bundle.zip ]]; then
          echo "Creando Certificados..."
	  mkdir $HOME/certs
          /usr/share/elasticsearch/bin/elasticsearch-certutil cert --silent --pem --in $HOME/instances.yml -out $HOME/certs/bundle.zip;
          sudo unzip $HOME/certs/bundle.zip -d $HOME/certs; 
        fi;
        sudo chown -R elasticsearch:0 $HOME/certs
