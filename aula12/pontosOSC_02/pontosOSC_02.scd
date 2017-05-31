(
SynthDef("ping", {arg ampEnv = 0.4, freqSin = 400;
	var envelope, som, saida;
	envelope = EnvGen.ar(Env.perc(), levelScale: ampEnv, doneAction: 2);
	som = SinOsc.ar(freqSin, mul:envelope);
	saida = som;
	Out.ar(0, Pan2.ar(saida));
}).add;
)

Synth("ping");

NetAddr.localAddr

OSCdef("recebeProcessing", {Synth("ping")}, "/posPontos");

(
OSCdef("recebeProcessing", {
	arg minhaMsg; //não precisa ser igual a variável OscMessage
	              //no Processing, mas ajuda na organização
	Synth("ping", [\freqSin, minhaMsg[1]+400, \ampEnv, minhaMsg[2]/400]);
}, "/posPontos");
)