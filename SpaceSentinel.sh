#!/bin/bash

# Définir le seuil d'avertissement
SEUIL=10

# Couleurs
RED='\033[0;31m' # Rouge pour les avertissements
GREEN='\033[0;32m' # Vert pour l'espace suffisant
NC='\033[0m' # Pas de couleur

# Obtenir le pourcentage d'espace utilisé sur /dev/sda1
USAGE=$(df /dev/sda1 | awk '{print $5}' | tr -d '%' | tail -n 1)

# Comparer l'utilisation avec le seuil
if [ $USAGE -gt $((100-SEUIL)) ]; then
    echo -e "${RED}Avertissement: L'espace disque sur /dev/sda1 est presque plein (utilisé à $USAGE%).${NC}"
else
    echo -e "${GREEN}L'espace disque sur /dev/sda1 est suffisant (utilisé à $USAGE%).${NC}"
fi




