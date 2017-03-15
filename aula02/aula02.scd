//isso é um comentário sobre o código

//comentários servem para o seu eu do presente deixar
//recados para o seu eu do futuro

s.boot //liga o servidor. sem isso, nada funciona...
s.quit //desliga o servidor. atalho Ctrl + . (Cmd + . para Mac)

//comentários são ignorados pelo SuperCollider na hora de interpretar o código

{}.play

{SinOsc.ar(freq:400, mul:0.1)}.play

//supercollider não avalia o documento inteiro de uma única vez.
//é possível interpretar cada comando, cada instrução, individualmente

2+2
3*((57/4.765)*pi.sqrt)

rrand(20, 30)
rrand(0.0, 1.0)

"fora temer".speak // só funciona em Mac

{WhiteNoise.ar(mul:0.1)}.play
{BrownNoise.ar(mul:0.1)}.play
{PinkNoise.ar(mul:0.1)}.play

{SinOsc.ar(freq:400, mul:0.1)}.play //forma de onda senoidal
{Pulse.ar(freq:400, mul:0.1)}.play  //forma de onda quadrada
{Saw.ar(freq:400, mul:0.1)}.play    //I wanna play a game...
{LFTri.ar(freq:400, mul:0.1)}.play  //forma de onda triangular

// funções podem ser argumentos de outras funções!

{SinOsc.ar(freq:rrand(300, 500), mul: 0.1)}.play
{Saw.ar(freq:MouseX.kr(minval:200, maxval:500), mul:0.1)}.play

{LFTri.ar(freq:600, mul:Line.kr(start:0, end:0.5, dur:5))}.play
{PinkNoise.ar(mul:Line.kr(start:1, end:0, dur:0.05))}.play

{PinkNoise.ar(mul:LFTri.ar(freq:1))}.play

{Saw.ar(freq:300, mul:SinOsc.ar(freq:1))}.play //alto! cuidado com fone!

{Pulse.ar(freq:MouseX.kr(minval:200, maxval:800), mul:SinOsc.ar(freq:MouseY.kr(minval:1, maxval:100)))}.play //alto! cuidado com fone!

//maneira simples de rodar duas funções simultaneamente

(
{Saw.ar(300, 0.1)}.play;
{Saw.ar(300.1, 0.1)}.play;
)

(
{WhiteNoise.ar(Line.kr(0, 0.5, 10))}.play;
{BrownNoise.ar(Line.kr(0.5, 0, 10))}.play;
)
