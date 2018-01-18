#include "layer4_hls.h"
#include <stdio.h>
#include <math.h>

#define SIGMOID(x) (1.7159*(tanh(0.66666667*x)))
#define Q 8

// ------------------------------------------------------------------------------------------------------------------------------------------
void calculateLayer4(uint16_t Layer3_Neurons_CPU_hls[50*5*5], uint16_t Layer3_Weights_CPU_hls[50*5*5], uint16_t Layer4_Neurons_CPU_hls[100])
// ------------------------------------------------------------------------------------------------------------------------------------------
{
	printf("LAYER 4 HLS \n");

	uint16_t somme;
	int i, j, k, m;

	I : for( i=0;i<100;i++){
		somme = Layer3_Weights_CPU_hls[i*(1+50*25)];
		J : for( j=0;j<50;j++)

#pragma HLS loop_flatten
			K : for( k=0;k<5;k++)
				M : for ( m=0;m<5;m++)
					somme += (Layer3_Weights_CPU_hls[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU_hls[m+5*k+25*j]) / (1<<Q);

		Layer4_Neurons_CPU_hls[i] = (uint16_t) (1.7159) * (sinhf(0.66666667*somme)/coshf(0.66666667*somme));
	}
}
