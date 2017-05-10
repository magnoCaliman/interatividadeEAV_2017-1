// SYNTHDEF

// Primeiro *define* um sintetizador.
// SynthDef é a "definição de um sintetizador"
(
SynthDef("meuSynthLegal", {
	arg freqSin = 666;

	Out.ar(0, SinOsc.ar(freq:freqSin, mul:0.2));
	//Out.ar manda o som para a saída de som do computador. Sempre vai ser o final do SynthDef
}).add
)

// Depois controla o sintetizador
// com Synth vc passa valores para os argumentos da sua função
Synth("meuSynthLegal")
Synth("meuSynthLegal", [freqSin:200])
Synth("meuSynthLegal", [freqSin:rrand(100, 800)])

///

// Primeiro define a função
// Equivalente aos "void foo()" no Processing
(
SynthDef("bubble", {
	arg freq = 800, mod = 10, release = 2, volume = 0.4;
	var sintese, envelope, saida;

	sintese = SinOsc.ar(freq) * Saw.ar(mod);
	envelope = EnvGen.kr(Env.perc(releaseTime: release, level: volume), doneAction:2);
	saida = sintese * envelope;

	Out.ar(0, Pan2.ar(saida))
}).add
)

// Depois passa valores para os argumentos
// Qual diferença entre ARG e VAR na definição da função?
Synth("bubble")
Synth("bubble", [freq:200, mod:50])
Synth("bubble", [freq:200, mod:rrand(10, 200)])

///

(
SynthDef("gongo", {
	arg freq = 200, mod = 20, modrate = 1000, atq = 0.01, rls =2;
	var synth, envelope;

	synth = SinOsc.ar(freq + (modrate * Saw.ar(mod)));
    envelope = EnvGen.kr(Env.perc(atq, rls),doneAction:2);

	Out.ar(0, Pan2.ar(synth * envelope));
}).add
)

Synth("gongo")
Synth("gongo", [mod: 200, rls: 5, freq: 300, modrate: 400])
Synth("gongo", [mod: 200, rls: 5, freq: rrand(200, 1000), modrate: 400])