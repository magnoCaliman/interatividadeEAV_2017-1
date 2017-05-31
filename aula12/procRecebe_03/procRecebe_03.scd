// letras de a-z são variáveis globais (s não pode usar. reservado para o servidor)
n = NetAddr("127.0.0.1", 6666);
n.sendMsg("/valoresCirculo", 400.rand, 400.rand, 50.rand);

// para nomes maiores, começar com ~
~endProcessing = NetAddr("127.0.0.1", 6666);
~endProcessing.sendMsg("/valoresCirculo", 400.rand, 400.rand, 50.rand);

/////////////

(
{
	n.sendMsg("/valoresCirculo", 400.rand, 400.rand, 50.rand);
	1.wait;
	n.sendMsg("/valoresCirculo", 400.rand, 400.rand, 50.rand);
	1.wait;
}.fork
)

(
{
	4.do{
		n.sendMsg("/valoresCirculo", 400.rand, 400.rand, 50.rand);
		1.wait;
	}
}.fork;
)