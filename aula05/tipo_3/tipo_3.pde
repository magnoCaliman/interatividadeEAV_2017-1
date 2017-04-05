float posicaoX = random(200);
float posicaoY = random(200);

//int posicaoX = random(200);
//int posicaoY = random(200);

//int posicaoX = int(random(200));
//int posicaoY = int(random(200));

size(300, 300);
rectMode(CENTER);

rect(posicaoX, posicaoY, 40, 40);
rect(posicaoX + 40, posicaoY + 40, 40, 40);
ellipse(posicaoX + 40, posicaoY + 40, 40, 40);

println(posicaoX);
println(posicaoY);