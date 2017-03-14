Teste de stress de registro em servidor SIP

O teste de stress demonstrado nesse projeto faz diversos registros em um determinado servidor SIP usando SIPp.

SIPp é uma ferramenta de teste de desempenho para o protocolo SIP. Ele inclui alguns cenários 
básicos e estabelece e libera várias chamadas com os métodos INVITE e BYE. Ele também pode ler 
arquivos de cenários XML descrevendo qualquer configuração de teste de desempenho. 

O SIPp pode ser usado para testar muitos equipamentos SIP reais, como proxies SIP, servidores de mídia SIP, gateways SIP/x e SIP PBXes. 
Também é muito útil emular milhares de agentes de usuário chamando seu sistema SIP, que é o caso do nosso teste. Vamos emular milhares de registros sendo disparados ao nosso servidor.

Vamos aos testes:

1 - Você precisa instalar a ferramenta. Para isso, siga os passos conforme no site oficial: http://sipp.sourceforge.net/doc/reference.html#Installation. Caso você tenha dificuldades na instalação ou queira agilizar o processo pode baixar uma máquina virtual chamada KALI https://www.kali.org/downloads/, essa VM já possui a ferramenta instalada.

2 - Faça download ou clone desse projeto.

3 - O primeiro arquivo a ser executado é o gen_register_csv.sh, que vai gerar a sequência de extensions/accounts disponíveis no servidor SIP. No conteúdo do arquivo há mais informações de como gerar o csv.

4 - Após gerado o csv com as extensions/accounts abra o arquivo register.xml. Nele será possível ver algumas informações de como o script é montado. Primeiro disparando register ao asterisk e em seguida aguardando seu retorno. Para mais detalhes recomendo ler o manual da ferramenta (http://sipp.sourceforge.net/doc/reference.html) pois este é apenas um cenário de testes, sendo possível criar vários outros tipos.

5 - Execute o comando: sipp -sf register.xml -inf register.csv -r 10 -m 1000000 -l 100 -nd -fd 1 -i 192.168.9.172 192.168.9.203:5160
    Será possível ver o teste em tempo real.
    Consulte também o asterisk, será possível ver os registros acontecendo. 	


Alguns parâmetros relacionados ao comando:

-sf filename
	Load test scenario from specified file.
-inf filename
	Use CSV file to insert data substituted for [field0], [field1], etc into XML scenario.
-r rate
	Scenario execution rate, default value = 10 times per period, default period = 1000 ms.
-l limit
	Limit simultaneous calls (default: 3 * call_duration (s) * rate).
-m   
	Stop the test and exit when 'x' calls are processed.
-nd
	No default.
-fd
	Set the statistics dump log report frequency. Default is 60 and default unit is seconds.
-i 
	Set the local IP address for 'Contact:','Via:', and 'From:' headers. Default is primary host IP address.
-trace_msg
	Log sent and received SIP messages.
-trace_err
	Log error message.
