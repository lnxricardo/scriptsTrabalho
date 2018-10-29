#!/bin/bash

# Autor: Ricardo Assis
# Data:  28/10/18
# Função: Envia e-mail com a velocidade do link
# Atenção: Nunca use texto claro na senha do e-mail

# Delcaração de Variaveis

ARQUIVO="/tmp/testNet.log" 			# Local temporário para geração dos logs
DATA=$(date +%d/%m/%y-%H:%M:%S) 		# Data para o Log
EMAIL=exemplo@exemplo.com 			# Digite seu e-mail
DEST=destinatario@exemplo.com			# Digite o e-mail do destinátario
SENHA=senha ou arquivo do senha			# Senha do e-mail (por segurança criei a senha criptografada)
SMTP=endereçodosmtp:587				# Endereço do smtp 

###########################################################################################################################################

# Delcaração de funções
mail(){
sendemail -f $EMAIL -t $EMAIL -o tls=yes -u "Velocidade Internet - Softi" -m "Testando a internet" -a $ARQUIVO -s $SMTP -xu $EMAIL -xp $SENHA
}

############################################################################################################################################

# Inicio do script

echo -e "Cliente: Softi\nHorario da Medição: $DATA" >> $ARQUIVO		# Cria o cabeçalho para o arquivo de log 
speedtest --simple >> $ARQUIVO						# Chama o speedtest no modo simples
echo "==========================" >> $ARQUIVO				# Rodapé do cabeçalho

mail									# Chama a função que enviará o e-mail de log



rm $ARQUIVO								# Remove o arquivo




# Fim do Script


