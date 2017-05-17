Pbind(\degree, 0).play;

Pbind(\degree, 0, \dur, 0.5).play;

Pbind(\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], 1), \dur, 0.2).play;

Pbind(\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], 2), \dur, Pseq([0.25, 0.25, 0.5, 0.5], inf)).play;

(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], 2),
	\dur, Pseq([0.25, 0.25, 0.5, 0.5], inf)
).play
)

(
Pbind(
	\degree, Pseq([0, 1, 2], inf), //uma lista tem 3 itens
	\dur, Pseq([0.5, 1], inf),     //e a outra tem 2.
).play
)

(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], inf),     // \degree mapeia valores para uma escala de dó maior (as teclas brancas do piano)
	// \note,   Pseq([0, 1, 2, 3, 4, 5, 6, 7], inf),  // \note mapeia para uma escala cromática (teclas brancas + teclas pretas)
	\dur, 0.5,
	\scale, Scale.harmonicMinor                       // a não ser que \scale selecione outra escala
).play
)

Scale.directory //lista todas as escalas que o SC conhece (são muitas...)

(
Pbind(
	\note, Pseq([0, 3, 7], 3),
	\dur, Prand([0.2, 0.3, 0.4, 0.5], inf)
).trace.play
)

//qual diferença entre Prand e Pshuf?
(
Pbind(
	\note, Pshuf([0, 2, 4, 7, 9, 12, Rest(0.5)], 3),
	\dur, 0.3
).trace.play
)

//tocando mais de um pBind ao mesmo tempo

//bloco começa aqui...
(
Pbind(
	\degree, Pseq([0, 1, 2, 3, 4], 4),
	\dur, 0.5
).play;

Pbind(
	\degree, Pseq([3, 4, 5, 6, 7], 4),
	\dur, 0.5
).play;
)
//e termina aqui!

//usando Pbind para controlar um SynthDef!

(
SynthDef("plucking", {arg amp = 0.1, freq = 440, decay = 5, coef = 0.1;
var env, snd;
env = EnvGen.kr(Env.linen(0, decay, 0), doneAction: 2);
snd = Pluck.ar(
        in: WhiteNoise.ar(amp),
        trig: Impulse.kr(0),

        maxdelaytime: 0.1,
        delaytime: freq.reciprocal,
        decaytime: decay,
        coef: coef);
    Out.ar(0, [snd, snd]);
}).add;
)

Synth("plucking")

(
Pbind(
	\instrument, "plucking", //nome de algum SynthDef já adicionado ao servidor
	\degree, Pseq([0, 1, 2, 3, 4, 5, 6, 7], inf),
	\dur, Pseq([0.5, 0.5, 0.25, 0.25], inf),
	\decay, Pseq([0.1, 0.2, 0.3, 0.7, 0.8, 0.9, 1.5, 2], 3) //argumento decay só faz sentido pq o SynthDef "plucking" possui o argumento decay em algum lugar
).play
)

// que argumento *do SynthDef* determina qual nota (mais agudo ou mais grave) vai ser tocada?
// estamos controlando isso no Pbind?