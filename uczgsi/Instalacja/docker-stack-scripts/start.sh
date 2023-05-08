#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Rozpowszechniane na warunkach zmodyfikowanej licencji BSD.

set -e

# Ustaw specjalne flagi, jeżeli jesteś root-em.
if [ $(id -u) == 0 ] ; then
    # Handle username change.
    # Zmnień nazwę użytkownika.
    usermod -d /home/$NB_USER -l $NB_USER jovyan

    # Zmień UID użytkownika NB_USER na NB_UID jeżeli nie są zgodne.
    if [ "$NB_UID" != $(id -u $NB_USER) ] ; then
        echo "Set user UID to: $NB_UID"
        usermod -u $NB_UID $NB_USER
        # Uwaga: $HOME może zawierać /root w zależności od sposobu uruchomienia
        # kontenera. Uyj jawnie ścieżki $NB_USER.
        for d in "$CONDA_DIR" "$JULIA_PKGDIR" "/home/$NB_USER"; do
            if [[ ! -z "$d" && -d "$d" ]]; then
                echo "Ustawienie uid właściciela na $NB_UID: $d"
                chown -R $NB_UID "$d"
            fi
        done
    fi

    # Zmień GID użytkownika NB_USER na NB_GID jeżeli NB_GID został podany jako parametr.
    if [ "$NB_GID" ] ; then
        echo "Zmiana GID na $NB_GID"
        groupmod -g $NB_GID -o $(id -g -n $NB_USER)
    fi

    # Włącz sudo, jeżeli pojawi się żądanie.
    if [ "$GRANT_SUDO" == "1" || "$GRANT_SUDO" == 'yes' ]; then
        echo "Przyznanie $NB_USER dostępu sudo"
        echo "$NB_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/notebook
    fi

    # Wykonanie polecenia jako NB_USER.
    echo "Wykonanie polecenia jako $NB_USER"
    exec su $NB_USER -c "env PATH=$PATH $*"
else
  if [[ ! -z "$NB_UID" && "$NB_UID" != "$(id -u)" ]]; then
      echo 'Aby ustawić $NB_UID musisz uruchomić kontener jako root'
  fi
  if [[ ! -z "$NB_GID" && "$NB_GID" != "$(id -g)" ]]; then
      echo 'Aby ustawić $NB_GID musisz uruchomić kontener jako root'
  fi
#  if [ "$GRANT_SUDO" == "1" || "$GRANT_SUDO" == 'yes' ]; then
#      echo 'Aby udzielić uprawnień sudo musisz uruchomić kontener jako root'
#  fi
    # Wykonanie polecenia.
    echo "Wykonanie polecenia"
    exec $*
fi
