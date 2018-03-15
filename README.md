<b>Teste de stress de registro e ligações em servidor SIP</b>

<p>
O teste de stress demonstrado nesse projeto faz diversos registros em um determinado servidor SIP usando SIPp.
</p>

<p>
SIPp é uma ferramenta de teste de desempenho para o protocolo SIP. Ele inclui alguns cenários básicos e estabelece e libera várias chamadas com os métodos INVITE e BYE. Ele também pode ler arquivos de cenários XML descrevendo qualquer configuração de teste de desempenho. 
</p>

<p>
O SIPp pode ser usado para testar muitos equipamentos SIP reais, como proxies SIP, servidores de mídia SIP, gateways SIP/x e SIP PBXs. Também é muito útil para emular milhares de agentes de usuário chamando seu sistema SIP, que é o caso do nosso teste. Vamos emular milhares de registros sendo disparados a um servidor.
</p>

<p>
Vamos aos testes:
</p>

<p>
1 - Você precisa instalar a ferramenta. Para isso, siga os passos conforme o site oficial: http://sipp.sourceforge.net/doc/reference.html#Installation. Caso tenha dificuldades na instalação ou queira agilizar o processo pode também baixar uma máquina virtual chamada KALI https://www.kali.org/downloads/, essa VM já possui a ferramenta instalada.

Caso queira montar o ambiente o link a seguir demonstra como fazer a instalação:
http://sipptutorial.blogspot.com.br/2013/08/how-to-install-sipp-in-linux.html
</p>

<p>
2 - Faça download ou clone desse projeto.
</p>

<p>
3 - O primeiro arquivo a ser executado é o gen_register_csv.sh, que vai gerar a sequência de extensions/accounts disponíveis no servidor SIP. No conteúdo do arquivo há mais informações de como gerar o csv.
</p>

<p>
4 - Após gerado o csv com as extensions/accounts abra o arquivo register.xml. Nele será possível ver algumas informações de como o script é montado. Primeiro disparando register ao asterisk e em seguida aguardando seu retorno. Para mais detalhes recomendo ler o manual da ferramenta (http://sipp.sourceforge.net/doc/reference.html) pois este é apenas um cenário de testes, sendo possível criar vários outros tipos.
</p>

<p>
5 - Execute o comando: sipp -sf register.xml -inf register.csv -r 10 -m 1000000 -l 100 -nd -fd 1 -i 192.168.9.172 192.168.9.203:5160 
<br>Será possível ver o teste em tempo real. Consulte também o asterisk, será possível ver os registros acontecendo. 	
</p>

<p>
Alguns parâmetros relacionados ao comando:
<br>-sf filename<br>Load test scenario from specified file.
</p>
<p>
-inf filename<br>Use CSV file to insert data substituted for [field0], [field1], etc into XML scenario.
</p>
<p>
-r rate<br>Scenario execution rate, default value = 10 times per period, default period = 1000 ms.
</p>
<p>
-l limit<br>Limit simultaneous calls (default: 3 * call_duration (s) * rate).
</p>
<p>
-m<br>Stop the test and exit when 'x' calls are processed.
</p>
<p>
-nd<br>No default.
</p>
<p>
-fd<br>Set the statistics dump log report frequency. Default is 60 and default unit is seconds.
</p>
<p>
-i<br>Set the local IP address for 'Contact:','Via:', and 'From:' headers. Default is primary host IP address.
</p>
<p>
-trace_msg<br>Log sent and received SIP messages.
</p>
<p>
-trace_err<br>Log error message.
</p>
</div>
