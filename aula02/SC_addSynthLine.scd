(
~meuSynth = {
	var oscilador, envelope;
	envelope = Line.kr (start:1, end:0, dur:0.6);
	oscilador = {Mix(SinOsc.ar(freq:[300, 600], mul:0.6))};
	Pan2.ar (oscilador * envelope);
}.play;
)

s.boot
s.quit