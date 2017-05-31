(
SynthDef("vibrato", {arg freqMod = 2, ampEnv = 0.4, freqSom = 400;
	var envelope, som, modulacao, saida;

	envelope = EnvGen.ar(Env.perc(), levelScale: ampEnv, doneAction: 2);
	som = Saw.ar(freqSom, envelope);
	modulacao = SinOsc.ar(freqMod);

	saida = som * modulacao;
	Out.ar(0, Pan2.ar(saida));
}).add;
)

Synth("vibrato")
Synth("vibrato", [\freqSom, rrand(100, 400), \freqMod, rrand(2, 1000)])

NetAddr.localAddr

OSCdef("recebeProcessing", {Synth("vibrato")}, "/bordaEsq");

(
OSCdef("recebeProcessing", {
	Synth("vibrato", [\freqSom, rrand(100, 400), \freqMod, rrand(2, 1000)]);
}, "/bordaEsq");
)