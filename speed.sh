#!/bin/bash

clear

ARQUIVO="/tmp/testNet.log"
DATA=$(date +%d/%m/%y-%H:%M:%S)


echo "Iniciando teste de velocidade"
echo ""
echo -e "Cliente: Solucionartec\nHorarioda Medição: $DATA" >> $ARQUIVO
speedtest --simple >> $ARQUIVO
echo "==========================" >> $ARQUIVO

echo -e "Coletando resultados\nAguarde..."


echo "Pronto!"





