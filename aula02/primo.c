#include <stdio.h>
#include <time.h>

#define TRUE  1
#define FALSE 0

int main() {

    time_t tempoInicial, tempoFinal, tempoDecorrido;
    unsigned int intervaloInicial, intervaloFinal;
    unsigned int nAtual;/*O numero a ser verificado*/
    unsigned int div;/*variavel de controle para o laco for*/
    unsigned int contPrimo = 0; /*Conta quantos primos foram encontrados*/
    unsigned int ehPrimo;/*Variavel Verdadeiro/Falso para controlar se o nAtual eh ou nao primo*/


    printf("Digite o comeco do intervalo: ");
    scanf("%u", &intervaloInicial);

    printf("Digite o final do intervalo: ");
    scanf("%u", &intervaloFinal);

    time(&tempoInicial);

    for(nAtual = intervaloInicial; nAtual <= intervaloFinal; nAtual++){
	ehPrimo = nAtual >=2 ? TRUE : FALSE;
	/*Verifica se o nAtual eh divisivel por todos os numeros menores que ele, ate o 2*/
	for(div = (nAtual - 1); div > 1; div--){
	    if (nAtual % div == 0){ /*Se o nAtual for divisivel por div*/
		ehPrimo = FALSE;    /*Nao eh mais primo pois encontramos um divisor*/
		break;
	    }
	}

	/*Se encontrou mais um primo, conte + 1*/
	if (ehPrimo == TRUE){
	    contPrimo++;
	}
	
    }

    time(&tempoFinal);
    tempoDecorrido = difftime(tempoFinal, tempoInicial);

    printf("Foram encontrados %u primos no intervalo [%u,%u].\n", contPrimo, intervaloInicial, intervaloFinal);
    printf("Demorou %ld segundos.\n", tempoDecorrido);

    return 0;
}
